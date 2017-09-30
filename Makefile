#
# Do not edit this file, it is generated by makemake.go
#

.PHONY: all clean test
.SILENT:
.DELETE_ON_ERROR:
.SUFFIXES:

ANTLR := java -jar ~/bin/antlr-4.7-complete.jar
ANTLR_ARGS := -Dlanguage=Go -visitor

GRAMMARS := abnf agc antlr3 antlr4 apex arithmetic asm6502 asn atl basic bnf brainfuck c calculator clf clif clojure cobol85 cookie cool cpp creole csharp css3 csv datetime dcm dice ecmascript emailaddress erlang fasta fol fortran77 fusion-tables gff3 gml golang graphql graphstream-dgs gtin icalendar idl informix iri istc java java8 java8-pt javadoc jpa json kotlin lambda lcc less lolcode lua masm mdx memcached_protocol metric modelica molecule morsecode mps mumath mumps muparser mysql objc p pascal pcre pddl pdn pdp7 peoplecode php plsql postalcode powerbuilder prolog propcalc protobuf3 python2 python3 python3-js python3-py python3-ts python3alt quakemap r rcs robotwars romannumerals rpn ruby scala scss sexpression sharc smalltalk smtlibv2 snobol sparql sqlite stacktrace stringtemplate suokif telephone tiny tinyc tnt tsql ucb-logo unicode/unicode16 url useragent vb6 vba verilog vhdl wavefront webidl xml xpath

LANG_COLOR = \033[0;36m
OK_COLOR   = \033[0;32m
FAIL_COLOR = \033[0;31m
WARN_COLOR = \033[0;33m
NO_COLOR   = \033[m

# This is the default target
all: test

clean:
	@rm -r $(GRAMMARS) 2> /dev/null || true

test: abnf/abnf_test.go agc/agc_test.go antlr3/antlrv3_test.go antlr4/antlrv4_test.go apex/apex_test.go arithmetic/arithmetic_test.go asm6502/asm6502_test.go asn/asn_test.go atl/atl_test.go basic/jvmbasic_test.go bnf/bnf_test.go brainfuck/brainfuck_test.go c/c_test.go calculator/calculator_test.go clf/clf_test.go clif/clif_test.go clojure/clojure_test.go cobol85/cobol85_test.go cookie/cookie_test.go cool/cool_test.go cpp/cpp14_test.go creole/creole_test.go csharp/csharppreprocessor_test.go css3/css3_test.go csv/csv_test.go datetime/datetime_test.go dcm/dcm_2_0_grammar_test.go dice/dicenotation_test.go ecmascript/ecmascript_test.go emailaddress/emailaddress_test.go erlang/erlang_test.go fasta/fasta_test.go fol/fol_test.go fortran77/fortran77_test.go fusion-tables/fusiontablessql_test.go gff3/gff3_test.go gml/gml_test.go golang/golang_test.go graphql/graphql_test.go graphstream-dgs/dgs_test.go gtin/gtin_test.go icalendar/icalendar_test.go idl/idl_test.go informix/informix_test.go iri/iri_test.go istc/istc_test.go java/java_test.go java8/java8_test.go java8-pt/java_test.go javadoc/javadoc_test.go jpa/jpa_test.go json/json_test.go kotlin/kotlin_test.go lambda/lambda_test.go lcc/lcc_test.go less/less_test.go lolcode/lolcode_test.go lua/lua_test.go masm/masm_test.go mdx/mdx_test.go memcached_protocol/memcached_protocol_test.go metric/metric_test.go modelica/modelica_test.go molecule/molecule_test.go morsecode/morsecode_test.go mps/mps_test.go mumath/mumath_test.go mumps/mumps_test.go muparser/muparser_test.go mysql/mysql_test.go objc/objectivec_test.go p/p_test.go pascal/pascal_test.go pcre/pcre_test.go pddl/pddl_test.go pdn/pdn_test.go pdp7/pdp7_test.go peoplecode/peoplecode_test.go php/php_test.go plsql/plsql_test.go postalcode/postalcode_test.go powerbuilder/powerbuilder_test.go prolog/prolog_test.go propcalc/propcalc_test.go protobuf3/protobuf3_test.go python2/python2_test.go python3/python3_test.go python3-js/python3_test.go python3-py/python3_test.go python3-ts/python3_test.go python3alt/altpython3_test.go quakemap/quakemap_test.go r/r_test.go rcs/rcs_test.go robotwars/robotwar_test.go romannumerals/romannumerals_test.go rpn/rpn_test.go ruby/corundum_test.go scala/scala_test.go scss/scss_test.go sexpression/sexpression_test.go sharc/sharc_test.go smalltalk/smalltalk_test.go smtlibv2/smtlibv2_test.go snobol/snobol_test.go sparql/sparql_test.go sqlite/sqlite_test.go stacktrace/stacktrace_test.go stringtemplate/st_test.go suokif/suokif_test.go telephone/telephone_test.go tiny/tiny_test.go tinyc/tinyc_test.go tnt/tnt_test.go tsql/tsql_test.go ucb-logo/ucblogo_test.go unicode/unicode16/classify_test.go url/url_test.go useragent/useragent_test.go vb6/visualbasic6_test.go vba/vba_test.go verilog/verilog2001_test.go vhdl/vhdl_test.go wavefront/wavefrontobj_test.go webidl/webidl_test.go xml/xml_test.go xpath/xpath_test.go 



abnf: abnf/abnf_test.go
abnf/abnf_parser.go: grammars-v4/abnf/Abnf.g4
abnf/abnf_test.go: abnf/abnf_parser.go

agc: agc/agc_test.go
agc/agc_parser.go: grammars-v4/agc/agc.g4
agc/agc_test.go: agc/agc_parser.go

antlr3: antlr3/antlrv3_test.go
antlr3/antlrv3_parser.go: grammars-v4/antlr3/ANTLRv3.g4
antlr3/antlrv3_test.go: antlr3/antlrv3_parser.go

antlr4: antlr4/antlrv4_test.go
antlr4/antlrv4_parser.go antlr4/antlrv4_lexer.go: grammars-v4/antlr4/ANTLRv4Parser.g4 grammars-v4/antlr4/ANTLRv4Lexer.g4
antlr4/antlrv4_test.go: antlr4/antlrv4_parser.go antlr4/antlrv4_lexer.go

apex: apex/apex_test.go
apex/apex_parser.go: grammars-v4/apex/apex.g4
apex/apex_test.go: apex/apex_parser.go

arithmetic: arithmetic/arithmetic_test.go
arithmetic/arithmetic_parser.go: grammars-v4/arithmetic/arithmetic.g4
arithmetic/arithmetic_test.go: arithmetic/arithmetic_parser.go

asm6502: asm6502/asm6502_test.go
asm6502/asm6502_parser.go: grammars-v4/asm6502/asm6502.g4
asm6502/asm6502_test.go: asm6502/asm6502_parser.go

asn: asn/asn_test.go
asn/asn_parser.go: grammars-v4/asn/ASN.g4
asn/asn_test.go: asn/asn_parser.go

atl: atl/atl_test.go
atl/atl_parser.go: grammars-v4/atl/ATL.g4
atl/atl_test.go: atl/atl_parser.go

basic: basic/jvmbasic_test.go
basic/jvmbasic_parser.go: grammars-v4/basic/jvmBasic.g4
basic/jvmbasic_test.go: basic/jvmbasic_parser.go

bnf: bnf/bnf_test.go
bnf/bnf_parser.go: grammars-v4/bnf/bnf.g4
bnf/bnf_test.go: bnf/bnf_parser.go

brainfuck: brainfuck/brainfuck_test.go
brainfuck/brainfuck_parser.go: grammars-v4/brainfuck/brainfuck.g4
brainfuck/brainfuck_test.go: brainfuck/brainfuck_parser.go

c: c/c_test.go
c/c_parser.go: grammars-v4/c/C.g4
c/c_test.go: c/c_parser.go

calculator: calculator/calculator_test.go
calculator/calculator_parser.go: grammars-v4/calculator/calculator.g4
calculator/calculator_test.go: calculator/calculator_parser.go

clf: clf/clf_test.go
clf/clf_parser.go: grammars-v4/clf/clf.g4
clf/clf_test.go: clf/clf_parser.go

clif: clif/clif_test.go
clif/clif_parser.go: grammars-v4/clif/CLIF.g4
clif/clif_test.go: clif/clif_parser.go

clojure: clojure/clojure_test.go
clojure/clojure_parser.go: grammars-v4/clojure/Clojure.g4
clojure/clojure_test.go: clojure/clojure_parser.go

cobol85: cobol85/cobol85_test.go
cobol85/cobol85_parser.go: grammars-v4/cobol85/Cobol85.g4
cobol85/cobol85_test.go: cobol85/cobol85_parser.go

cookie: cookie/cookie_test.go
cookie/cookie_parser.go: grammars-v4/cookie/cookie.g4
cookie/cookie_test.go: cookie/cookie_parser.go

cool: cool/cool_test.go
cool/cool_parser.go: grammars-v4/cool/COOL.g4
cool/cool_test.go: cool/cool_parser.go

cpp: cpp/cpp14_test.go
cpp/cpp14_parser.go: grammars-v4/cpp/CPP14.g4
cpp/cpp14_test.go: cpp/cpp14_parser.go

creole: creole/creole_test.go
creole/creole_parser.go: grammars-v4/creole/creole.g4
creole/creole_test.go: creole/creole_parser.go

csharp: csharp/csharppreprocessor_test.go
csharp/csharp_lexer.go csharp/csharppreprocessor_parser.go csharp/csharp_parser.go: grammars-v4/csharp/CSharpLexer.g4 grammars-v4/csharp/CSharpPreprocessorParser.g4 grammars-v4/csharp/CSharpParser.g4
csharp/csharppreprocessor_test.go: csharp/csharp_lexer.go csharp/csharppreprocessor_parser.go csharp/csharp_parser.go

css3: css3/css3_test.go
css3/css3_parser.go: grammars-v4/css3/css3.g4
css3/css3_test.go: css3/css3_parser.go

csv: csv/csv_test.go
csv/csv_parser.go: grammars-v4/csv/CSV.g4
csv/csv_test.go: csv/csv_parser.go

datetime: datetime/datetime_test.go
datetime/datetime_parser.go: grammars-v4/datetime/datetime.g4
datetime/datetime_test.go: datetime/datetime_parser.go

dcm: dcm/dcm_2_0_grammar_test.go
dcm/dcm_2_0_grammar_parser.go: grammars-v4/dcm/DCM_2_0_grammar.g4
dcm/dcm_2_0_grammar_test.go: dcm/dcm_2_0_grammar_parser.go

dice: dice/dicenotation_test.go
dice/dicenotation_parser.go dice/dicenotation_lexer.go: grammars-v4/dice/DiceNotation.g4 grammars-v4/dice/DiceNotationLexer.g4
dice/dicenotation_test.go: dice/dicenotation_parser.go dice/dicenotation_lexer.go

ecmascript: ecmascript/ecmascript_test.go
ecmascript/ecmascript_parser.go: grammars-v4/ecmascript/ECMAScript.g4
ecmascript/ecmascript_test.go: ecmascript/ecmascript_parser.go

emailaddress: emailaddress/emailaddress_test.go
emailaddress/emailaddress_parser.go: grammars-v4/emailaddress/emailaddress.g4
emailaddress/emailaddress_test.go: emailaddress/emailaddress_parser.go

erlang: erlang/erlang_test.go
erlang/erlang_parser.go: grammars-v4/erlang/Erlang.g4
erlang/erlang_test.go: erlang/erlang_parser.go

fasta: fasta/fasta_test.go
fasta/fasta_parser.go: grammars-v4/fasta/fasta.g4
fasta/fasta_test.go: fasta/fasta_parser.go

fol: fol/fol_test.go
fol/fol_parser.go: grammars-v4/fol/fol.g4
fol/fol_test.go: fol/fol_parser.go

fortran77: fortran77/fortran77_test.go
fortran77/fortran77_parser.go: grammars-v4/fortran77/fortran77.g4
fortran77/fortran77_test.go: fortran77/fortran77_parser.go

fusion-tables: fusion-tables/fusiontablessql_test.go
fusion-tables/fusiontablessql_parser.go: grammars-v4/fusion-tables/FusionTablesSql.g4
fusion-tables/fusiontablessql_test.go: fusion-tables/fusiontablessql_parser.go

gff3: gff3/gff3_test.go
gff3/gff3_parser.go: grammars-v4/gff3/gff3.g4
gff3/gff3_test.go: gff3/gff3_parser.go

gml: gml/gml_test.go
gml/gml_parser.go: grammars-v4/gml/gml.g4
gml/gml_test.go: gml/gml_parser.go

golang: golang/golang_test.go
golang/golang_parser.go: grammars-v4/golang/Golang.g4
golang/golang_test.go: golang/golang_parser.go

graphql: graphql/graphql_test.go
graphql/graphql_parser.go: grammars-v4/graphql/Graphql.g4
graphql/graphql_test.go: graphql/graphql_parser.go

graphstream-dgs: graphstream-dgs/dgs_test.go
graphstream-dgs/dgs_parser.go: grammars-v4/graphstream-dgs/DGSParser.g4
graphstream-dgs/dgs_test.go: graphstream-dgs/dgs_parser.go

gtin: gtin/gtin_test.go
gtin/gtin_parser.go: grammars-v4/gtin/gtin.g4
gtin/gtin_test.go: gtin/gtin_parser.go

icalendar: icalendar/icalendar_test.go
icalendar/icalendar_parser.go: grammars-v4/icalendar/iCalendar.g4
icalendar/icalendar_test.go: icalendar/icalendar_parser.go

idl: idl/idl_test.go
idl/idl_parser.go: grammars-v4/idl/IDL.g4
idl/idl_test.go: idl/idl_parser.go

informix: informix/informix_test.go
informix/informix_parser.go: grammars-v4/informix/informix.g4
informix/informix_test.go: informix/informix_parser.go

iri: iri/iri_test.go
iri/iri_parser.go: grammars-v4/iri/IRI.g4
iri/iri_test.go: iri/iri_parser.go

istc: istc/istc_test.go
istc/istc_parser.go: grammars-v4/istc/istc.g4
istc/istc_test.go: istc/istc_parser.go

java: java/java_test.go
java/java_parser.go: grammars-v4/java/Java.g4
java/java_test.go: java/java_parser.go

java8: java8/java8_test.go
java8/java8_parser.go: grammars-v4/java8/Java8.g4
java8/java8_test.go: java8/java8_parser.go

java8-pt: java8-pt/java_test.go
java8-pt/java_lexer.go java8-pt/java_parser.go: grammars-v4/java8-pt/JavaLexer.g4 grammars-v4/java8-pt/JavaParser.g4
java8-pt/java_test.go: java8-pt/java_lexer.go java8-pt/java_parser.go

javadoc: javadoc/javadoc_test.go
javadoc/javadoc_parser.go javadoc/javadoc_lexer.go: grammars-v4/javadoc/JavadocParser.g4 grammars-v4/javadoc/JavadocLexer.g4
javadoc/javadoc_test.go: javadoc/javadoc_parser.go javadoc/javadoc_lexer.go

jpa: jpa/jpa_test.go
jpa/jpa_parser.go: grammars-v4/jpa/jpa.g4
jpa/jpa_test.go: jpa/jpa_parser.go

json: json/json_test.go
json/json_parser.go: grammars-v4/json/JSON.g4
json/json_test.go: json/json_parser.go

kotlin: kotlin/kotlin_test.go
kotlin/kotlin_lexer.go kotlin/kotlin_parser.go: grammars-v4/kotlin/KotlinLexer.g4 grammars-v4/kotlin/KotlinParser.g4
kotlin/kotlin_test.go: kotlin/kotlin_lexer.go kotlin/kotlin_parser.go

lambda: lambda/lambda_test.go
lambda/lambda_parser.go: grammars-v4/lambda/lambda.g4
lambda/lambda_test.go: lambda/lambda_parser.go

lcc: lcc/lcc_test.go
lcc/lcc_parser.go: grammars-v4/lcc/lcc.g4
lcc/lcc_test.go: lcc/lcc_parser.go

less: less/less_test.go
less/less_parser.go: grammars-v4/less/LessParser.g4
less/less_test.go: less/less_parser.go

lolcode: lolcode/lolcode_test.go
lolcode/lolcode_parser.go: grammars-v4/lolcode/lolcode.g4
lolcode/lolcode_test.go: lolcode/lolcode_parser.go

lua: lua/lua_test.go
lua/lua_parser.go: grammars-v4/lua/Lua.g4
lua/lua_test.go: lua/lua_parser.go

masm: masm/masm_test.go
masm/masm_parser.go: grammars-v4/masm/MASM.g4
masm/masm_test.go: masm/masm_parser.go

mdx: mdx/mdx_test.go
mdx/mdx_parser.go: grammars-v4/mdx/mdx.g4
mdx/mdx_test.go: mdx/mdx_parser.go

memcached_protocol: memcached_protocol/memcached_protocol_test.go
memcached_protocol/memcached_protocol_parser.go: grammars-v4/memcached_protocol/memcached_protocol.g4
memcached_protocol/memcached_protocol_test.go: memcached_protocol/memcached_protocol_parser.go

metric: metric/metric_test.go
metric/metric_parser.go: grammars-v4/metric/metric.g4
metric/metric_test.go: metric/metric_parser.go

modelica: modelica/modelica_test.go
modelica/modelica_parser.go: grammars-v4/modelica/modelica.g4
modelica/modelica_test.go: modelica/modelica_parser.go

molecule: molecule/molecule_test.go
molecule/molecule_parser.go: grammars-v4/molecule/molecule.g4
molecule/molecule_test.go: molecule/molecule_parser.go

morsecode: morsecode/morsecode_test.go
morsecode/morsecode_parser.go: grammars-v4/morsecode/morsecode.g4
morsecode/morsecode_test.go: morsecode/morsecode_parser.go

mps: mps/mps_test.go
mps/mps_parser.go: grammars-v4/mps/mps.g4
mps/mps_test.go: mps/mps_parser.go

mumath: mumath/mumath_test.go
mumath/mumath_parser.go: grammars-v4/mumath/mumath.g4
mumath/mumath_test.go: mumath/mumath_parser.go

mumps: mumps/mumps_test.go
mumps/mumps_parser.go: grammars-v4/mumps/mumps.g4
mumps/mumps_test.go: mumps/mumps_parser.go

muparser: muparser/muparser_test.go
muparser/muparser_parser.go: grammars-v4/muparser/MuParser.g4
muparser/muparser_test.go: muparser/muparser_parser.go

mysql: mysql/mysql_test.go
mysql/mysql_lexer.go mysql/mysql_parser.go: grammars-v4/mysql/MySqlLexer.g4 grammars-v4/mysql/MySqlParser.g4
mysql/mysql_test.go: mysql/mysql_lexer.go mysql/mysql_parser.go

objc: objc/objectivec_test.go
objc/objectivec_parser.go: grammars-v4/objc/ObjectiveCParser.g4
objc/objectivec_test.go: objc/objectivec_parser.go

p: p/p_test.go
p/p_parser.go: grammars-v4/p/p.g4
p/p_test.go: p/p_parser.go

pascal: pascal/pascal_test.go
pascal/pascal_parser.go: grammars-v4/pascal/pascal.g4
pascal/pascal_test.go: pascal/pascal_parser.go

pcre: pcre/pcre_test.go
pcre/pcre_parser.go: grammars-v4/pcre/PCRE.g4
pcre/pcre_test.go: pcre/pcre_parser.go

pddl: pddl/pddl_test.go
pddl/pddl_parser.go: grammars-v4/pddl/Pddl.g4
pddl/pddl_test.go: pddl/pddl_parser.go

pdn: pdn/pdn_test.go
pdn/pdn_parser.go: grammars-v4/pdn/pdn.g4
pdn/pdn_test.go: pdn/pdn_parser.go

pdp7: pdp7/pdp7_test.go
pdp7/pdp7_parser.go: grammars-v4/pdp7/pdp7.g4
pdp7/pdp7_test.go: pdp7/pdp7_parser.go

peoplecode: peoplecode/peoplecode_test.go
peoplecode/peoplecode_parser.go: grammars-v4/peoplecode/PeopleCode.g4
peoplecode/peoplecode_test.go: peoplecode/peoplecode_parser.go

php: php/php_test.go
php/php_lexer.go php/php_parser.go: grammars-v4/php/PHPLexer.g4 grammars-v4/php/PHPParser.g4
php/php_test.go: php/php_lexer.go php/php_parser.go

plsql: plsql/plsql_test.go
plsql/plsql_lexer.go plsql/plsql_parser.go: grammars-v4/plsql/PlSqlLexer.g4 grammars-v4/plsql/PlSqlParser.g4
plsql/plsql_test.go: plsql/plsql_lexer.go plsql/plsql_parser.go

postalcode: postalcode/postalcode_test.go
postalcode/postalcode_parser.go: grammars-v4/postalcode/postalcode.g4
postalcode/postalcode_test.go: postalcode/postalcode_parser.go

powerbuilder: powerbuilder/powerbuilder_test.go
powerbuilder/powerbuilder_parser.go: grammars-v4/powerbuilder/powerbuilder.g4
powerbuilder/powerbuilder_test.go: powerbuilder/powerbuilder_parser.go

prolog: prolog/prolog_test.go
prolog/prolog_parser.go: grammars-v4/prolog/prolog.g4
prolog/prolog_test.go: prolog/prolog_parser.go

propcalc: propcalc/propcalc_test.go
propcalc/propcalc_parser.go: grammars-v4/propcalc/propcalc.g4
propcalc/propcalc_test.go: propcalc/propcalc_parser.go

protobuf3: protobuf3/protobuf3_test.go
protobuf3/protobuf3_parser.go: grammars-v4/protobuf3/Protobuf3.g4
protobuf3/protobuf3_test.go: protobuf3/protobuf3_parser.go

python2: python2/python2_test.go
python2/python2_parser.go: grammars-v4/python2/Python2.g4
python2/python2_test.go: python2/python2_parser.go

python3: python3/python3_test.go
python3/python3_parser.go: grammars-v4/python3/Python3.g4
python3/python3_test.go: python3/python3_parser.go

python3-js: python3-js/python3_test.go
python3-js/python3_parser.go: grammars-v4/python3-js/Python3.g4
python3-js/python3_test.go: python3-js/python3_parser.go

python3-py: python3-py/python3_test.go
python3-py/python3_parser.go: grammars-v4/python3-py/Python3.g4
python3-py/python3_test.go: python3-py/python3_parser.go

python3-ts: python3-ts/python3_test.go
python3-ts/python3_parser.go: grammars-v4/python3-ts/Python3.g4
python3-ts/python3_test.go: python3-ts/python3_parser.go

python3alt: python3alt/altpython3_test.go
python3alt/altpython3_parser.go: grammars-v4/python3alt/AltPython3.g4
python3alt/altpython3_test.go: python3alt/altpython3_parser.go

quakemap: quakemap/quakemap_test.go
quakemap/quakemap_parser.go: grammars-v4/quakemap/quakemap.g4
quakemap/quakemap_test.go: quakemap/quakemap_parser.go

r: r/r_test.go
r/r_parser.go: grammars-v4/r/R.g4
r/r_test.go: r/r_parser.go

rcs: rcs/rcs_test.go
rcs/rcs_parser.go: grammars-v4/rcs/RCS.g4
rcs/rcs_test.go: rcs/rcs_parser.go

robotwars: robotwars/robotwar_test.go
robotwars/robotwar_parser.go: grammars-v4/robotwars/robotwar.g4
robotwars/robotwar_test.go: robotwars/robotwar_parser.go

romannumerals: romannumerals/romannumerals_test.go
romannumerals/romannumerals_parser.go: grammars-v4/romannumerals/romannumerals.g4
romannumerals/romannumerals_test.go: romannumerals/romannumerals_parser.go

rpn: rpn/rpn_test.go
rpn/rpn_parser.go: grammars-v4/rpn/rpn.g4
rpn/rpn_test.go: rpn/rpn_parser.go

ruby: ruby/corundum_test.go
ruby/corundum_parser.go: grammars-v4/ruby/Corundum.g4
ruby/corundum_test.go: ruby/corundum_parser.go

scala: scala/scala_test.go
scala/scala_parser.go: grammars-v4/scala/Scala.g4
scala/scala_test.go: scala/scala_parser.go

scss: scss/scss_test.go
scss/scss_parser.go scss/scss_lexer.go: grammars-v4/scss/ScssParser.g4 grammars-v4/scss/ScssLexer.g4
scss/scss_test.go: scss/scss_parser.go scss/scss_lexer.go

sexpression: sexpression/sexpression_test.go
sexpression/sexpression_parser.go: grammars-v4/sexpression/sexpression.g4
sexpression/sexpression_test.go: sexpression/sexpression_parser.go

sharc: sharc/sharc_test.go
sharc/sharc_parser.go: grammars-v4/sharc/SHARCParser.g4
sharc/sharc_test.go: sharc/sharc_parser.go

smalltalk: smalltalk/smalltalk_test.go
smalltalk/smalltalk_parser.go: grammars-v4/smalltalk/Smalltalk.g4
smalltalk/smalltalk_test.go: smalltalk/smalltalk_parser.go

smtlibv2: smtlibv2/smtlibv2_test.go
smtlibv2/smtlibv2_parser.go: grammars-v4/smtlibv2/SMTLIBv2.g4
smtlibv2/smtlibv2_test.go: smtlibv2/smtlibv2_parser.go

snobol: snobol/snobol_test.go
snobol/snobol_parser.go: grammars-v4/snobol/snobol.g4
snobol/snobol_test.go: snobol/snobol_parser.go

sparql: sparql/sparql_test.go
sparql/sparql_parser.go: grammars-v4/sparql/Sparql.g4
sparql/sparql_test.go: sparql/sparql_parser.go

sqlite: sqlite/sqlite_test.go
sqlite/sqlite_parser.go: grammars-v4/sqlite/SQLite.g4
sqlite/sqlite_test.go: sqlite/sqlite_parser.go

stacktrace: stacktrace/stacktrace_test.go
: grammars-v4/stacktrace/StackTrace.g4
stacktrace/stacktrace_test.go: 

stringtemplate: stringtemplate/st_test.go
stringtemplate/st_parser.go: grammars-v4/stringtemplate/STParser.g4
stringtemplate/st_test.go: stringtemplate/st_parser.go

suokif: suokif/suokif_test.go
suokif/suokif_parser.go: grammars-v4/suokif/SUOKIF.g4
suokif/suokif_test.go: suokif/suokif_parser.go

telephone: telephone/telephone_test.go
telephone/telephone_parser.go: grammars-v4/telephone/telephone.g4
telephone/telephone_test.go: telephone/telephone_parser.go

tiny: tiny/tiny_test.go
tiny/tiny_parser.go: grammars-v4/tiny/tiny.g4
tiny/tiny_test.go: tiny/tiny_parser.go

tinyc: tinyc/tinyc_test.go
tinyc/tinyc_parser.go: grammars-v4/tinyc/tinyc.g4
tinyc/tinyc_test.go: tinyc/tinyc_parser.go

tnt: tnt/tnt_test.go
tnt/tnt_parser.go: grammars-v4/tnt/tnt.g4
tnt/tnt_test.go: tnt/tnt_parser.go

tsql: tsql/tsql_test.go
tsql/tsql_lexer.go tsql/tsql_parser.go: grammars-v4/tsql/TSqlLexer.g4 grammars-v4/tsql/TSqlParser.g4
tsql/tsql_test.go: tsql/tsql_lexer.go tsql/tsql_parser.go

ucb-logo: ucb-logo/ucblogo_test.go
ucb-logo/ucblogo_parser.go: grammars-v4/ucb-logo/UCBLogo.g4
ucb-logo/ucblogo_test.go: ucb-logo/ucblogo_parser.go

unicode/unicode16: unicode/unicode16/classify_test.go
unicode/unicode16/classify_parser.go: grammars-v4/unicode/unicode16/classify.g4
unicode/unicode16/classify_test.go: unicode/unicode16/classify_parser.go

url: url/url_test.go
url/url_parser.go: grammars-v4/url/url.g4
url/url_test.go: url/url_parser.go

useragent: useragent/useragent_test.go
useragent/useragent_parser.go: grammars-v4/useragent/useragent.g4
useragent/useragent_test.go: useragent/useragent_parser.go

vb6: vb6/visualbasic6_test.go
vb6/visualbasic6_parser.go: grammars-v4/vb6/VisualBasic6.g4
vb6/visualbasic6_test.go: vb6/visualbasic6_parser.go

vba: vba/vba_test.go
vba/vba_parser.go: grammars-v4/vba/vba.g4
vba/vba_test.go: vba/vba_parser.go

verilog: verilog/verilog2001_test.go
verilog/verilog2001_parser.go: grammars-v4/verilog/Verilog2001.g4
verilog/verilog2001_test.go: verilog/verilog2001_parser.go

vhdl: vhdl/vhdl_test.go
vhdl/vhdl_parser.go: grammars-v4/vhdl/vhdl.g4
vhdl/vhdl_test.go: vhdl/vhdl_parser.go

wavefront: wavefront/wavefrontobj_test.go
wavefront/wavefrontobj_parser.go: grammars-v4/wavefront/WavefrontOBJ.g4
wavefront/wavefrontobj_test.go: wavefront/wavefrontobj_parser.go

webidl: webidl/webidl_test.go
webidl/webidl_parser.go: grammars-v4/webidl/WebIDL.g4
webidl/webidl_test.go: webidl/webidl_parser.go

xml: xml/xml_test.go
xml/xml_parser.go: grammars-v4/xml/XMLParser.g4
xml/xml_test.go: xml/xml_parser.go

xpath: xpath/xpath_test.go
xpath/xpath_parser.go: grammars-v4/xpath/xpath.g4
xpath/xpath_test.go: xpath/xpath_parser.go

%_parser.go %_lexer.go:
	lang=$$(dirname $@); \
	mkdir -p $$lang; \
	pushd grammars-v4/$$lang > /dev/null; \
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
