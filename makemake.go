// makemake extracts the build and test info from the pom.xml to generate
// a Makefile capable to build and test all the grammars with Go.
package main

import (
	"bramp.net/antlr4test-go/utils"
	"log"
	"os"
	"path/filepath"
	"sort"
	"strings"
	"text/template"
)

const GRAMMARS_ROOT = "grammars-v4"

// MAKEFILE is the template used to build the Makefile.
// It expects to be executed with a templateData
const MAKEFILE = `#
# Do not edit this file, it is generated by makemake.go
#

.PHONY: all clean test
.SILENT:
.DELETE_ON_ERROR:
.SUFFIXES:

ANTLR := java -jar ~/bin/antlr-4.7-complete.jar
ANTLR_ARGS := -Dlanguage=Go -visitor

GRAMMARS := {{ Join .Grammars " " }}

LANG_COLOR = \033[0;36m
OK_COLOR   = \033[0;32m
FAIL_COLOR = \033[0;31m
WARN_COLOR = \033[0;33m
NO_COLOR   = \033[m

# This is the default target
all: test

clean:
	@rm -r $(GRAMMARS) 2> /dev/null || true

test: {{ range $name, $pom := .Poms -}}{{ $name }}/{{ $pom.FilePrefix }}_test.go {{ end }}

{{ range $name, $pom := .Poms -}}
{{ $genfiles := (Join (index $.GeneratedFiles $name) " ") }}
{{ $testfile := (Concat $name "/" $pom.FilePrefix "_test.go") }}
{{ $name }}: {{ $testfile }}
{{ $genfiles }}: {{ Join $pom.Includes " " }}
{{ $testfile }}: {{ $genfiles }}
{{- end }}

%_parser.go %_lexer.go:
	lang=$$(dirname $@); \
	mkdir -p $$lang; \
	pushd {{.GrammarsRoot}}/$$lang > /dev/null; \
	$(ANTLR) $(ANTLR_ARGS) -package $$lang $(notdir $^) -o ../../$$lang > ../../$$lang/$$lang.errors 2>&1; \
	RET=$$?; \
	popd > /dev/null; \
	if [ $$RET -ne 0 ]; then \
		printf "| %s  | $(LANG_COLOR)%-15s$(NO_COLOR) | %-75s |\n" "❌" "$$lang" "antlr: $$(tail -n 1 $$lang/$$lang.errors)"; \
		rm $$lang/*.go > /dev/null 2>&1 || true; \
		exit $$RET; \
	fi; \
	go build ./$$lang >> $$lang/$$lang.errors 2>&1; \
	RET=$$?; \
	if [ $$RET -ne 0 ]; then \
		printf "| %s  | $(LANG_COLOR)%-15s$(NO_COLOR) | %-75s |\n" "❌" "$$lang" "build: $$(tail -n 1 $$lang/$$lang.errors)"; \
		exit $$RET; \
	fi;

%_test.go: %_parser.go
	lang=$$(dirname $@); \
	go run maketest.go $$lang >> $$lang/$$lang.errors 2>&1; \
	RET=$$?; \
	if [ $$RET -ne 0 ]; then \
		printf "| %s  | $(LANG_COLOR)%-15s$(NO_COLOR) | %-75s |\n" "❌" "$$lang" "maketest: $$(tail -n 1 $$lang/$$lang.errors)"; \
		exit $$RET; \
	fi; \
	go test -timeout 10s ./$$lang >> $$lang/$$lang.errors 2>&1; \
	RET=$$?; \
	if [ $$RET -ne 0 ]; then \
		printf "| %s  | $(LANG_COLOR)%-15s$(NO_COLOR) | %-75s |\n" "❌" "$$lang" " test: $$(tail -n 1 $$lang/$$lang.errors)"; \
		exit $$RET; \
	fi; \
	if [[ -s $$lang/$$lang.errors ]]; then \
		rm $$lang/$$lang.errors; \
		printf "| %s  | $(LANG_COLOR)%-15s$(NO_COLOR) | %-75s |\n" "✅" "$$lang" ""; \
	else \
		printf "| %s  | $(LANG_COLOR)%-15s$(NO_COLOR) | %-75s |\n" "⚠️" "$$lang" "$$(tail -n 1 $$lang/$$lang.errors)"; \
	fi;
`

type templateData struct {
	GrammarsRoot   string
	Grammars       []string
	Poms           map[string]*utils.Pom
	GeneratedFiles map[string][]string
}

func main() {
	poms := make(map[string]*utils.Pom)

	err := filepath.Walk(GRAMMARS_ROOT, func(path string, info os.FileInfo, err error) error {
		if err == nil && strings.HasSuffix(path, "/pom.xml") {
			p, err := utils.ParsePom(path)
			if err != nil {
				return err
			}

			if len(p.Includes) == 0 {
				log.Printf("skipping %q as it contains no grammars", path)
				return err
			}

			poms[p.Name] = p
		}
		return err
	})
	if err != nil {
		log.Fatalf("failed to walk: %s", err)
	}

	var grammars []string
	for name := range poms {
		grammars = append(grammars, name)
	}
	sort.Strings(grammars)

	generatedFiles := make(map[string][]string)
	for name, pom := range poms {
		var generated []string
		for _, file := range pom.Generated {
			// Full path to generated file
			generated = append(generated, name+"/"+file)
		}
		generatedFiles[name] = generated
	}

	data := templateData{
		GrammarsRoot:   GRAMMARS_ROOT,
		Grammars:       grammars,
		Poms:           poms,
		GeneratedFiles: generatedFiles,
	}

	funcs := template.FuncMap{
		"Join": strings.Join,
		"Concat": func(strings ...string) string {
			results := ""
			for _, s := range strings {
				results = results + s
			}
			return results
		},
	}

	makeTemplate := template.Must(template.New("makefile").Funcs(funcs).Parse(MAKEFILE))

	out, err := os.Create("Makefile")
	if err != nil {
		log.Fatalf("failed to create Makefile: %s", err)
	}

	if err := makeTemplate.Execute(out, data); err != nil {
		log.Fatalf("failed to generate Makefile: %s", err)
	}

}
