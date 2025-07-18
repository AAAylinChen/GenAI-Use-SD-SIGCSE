************************************************************
* Ordinal Regression Analysis of Survey Data (for ICSE 2025)
* Author: [Anonymous]
* Description: Recodes Likert items and fits ologit/gologit2 models
* Data file: data/ordinal-regression.csv
************************************************************

* Load cleaned CSV data
import delimited "data/ordinal-regression.csv", clear

* Encode group variable
encode Group, gen(Group_num)

************************************************************
* Performance: Perceived Usefulness - "GenAI tools improve my performance in __"
gen Perf3 = .
replace Perf3 = 1 if inlist(Performance, 1, 2)
replace Perf3 = 2 if Performance == 3
replace Perf3 = 3 if inlist(Performance, 4, 5)
label define perf3 1 "Neg" 2 "Neu" 3 "Pos"
label values Perf3 perf3

ologit Perf3 i.Group_num
brant
ologit Perf3 ib2.Group_num
brant

gologit2 Perf3 i.Group_num, autofit
gologit2 Perf3 ib2.Group_num, autofit
************************************************************
* Productivity: Perceived Usefulness - "GenAI tools increase my productivity in __"
gen Pro3 = .
replace Pro3 = 1 if inlist(Productivity, 1, 2)
replace Pro3 = 2 if Productivity == 3
replace Pro3 = 3 if inlist(Productivity, 4, 5)
label define pro3 1 "Neg" 2 "Neu" 3 "Pos"
label values Pro3 pro3

ologit Pro3 i.Group_num
brant
ologit Pro3 ib2.Group_num
brant

gologit2 Pro3 i.Group_num, autofit
gologit2 Pro3 ib2.Group_num, autofit
************************************************************
*Effectiveness: Perceived Usefulness - "I find GenAI tools enhance my __ effectiveness. 
gen Eff3 = .
replace Eff3 = 1 if inlist(Effectiveness, 1, 2)
replace Eff3 = 2 if Effectiveness == 3
replace Eff3 = 3 if inlist(Effectiveness, 4, 5)
label define eff3 1 "Neg" 2 "Neu" 3 "Pos"
label values Eff3 eff3

ologit Eff3 i.Group_num
brant
ologit Eff3 ib2.Group_num
brant

gologit2 Eff3 i.Group_num, autofit
gologit2 Eff3 ib2.Group_num, autofit
************************************************************
*Interaction: Perceived Ease of Use - "My interaction with GenAI tools is clear and understandable."
gen Act3 = .
replace Act3 = 1 if inlist(Interaction, 1, 2)
replace Act3 = 2 if Interaction == 3
replace Act3 = 3 if inlist(Interaction, 4, 5)
label define act3 1 "Neg" 2 "Neu" 3 "Pos"
label values Act3 act3

ologit Act3 i.Group_num
brant
ologit Act3 ib2.Group_num
brant

gologit2 Act3 i.Group_num, autofit
gologit2 Act3 ib2.Group_num, autofit
************************************************************
*Mental effort: Perceived Ease of Use - "Using GenAI tools does not require much mental effort."
gen Men3 = .
replace Men3 = 1 if inlist(Mental, 1, 2)
replace Men3 = 2 if Mental == 3
replace Men3 = 3 if inlist(Mental, 4, 5)
label define men3 1 "Neg" 2 "Neu" 3 "Pos"
label values Men3 men3

ologit Men3 i.Group_num
brant
ologit Men3 ib2.Group_num
brant

gologit2 Men3 i.Group_num, autofit
gologit2 Men3 ib2.Group_num, autofit
************************************************************
*Easy: Perceived Ease of Use - "I find it easy to use GenAI tools for __."
gen Easy3 = .
replace Easy3 = 1 if inlist(Easy, 1, 2)
replace Easy3 = 2 if Easy == 3
replace Easy3 = 3 if inlist(Easy, 4, 5)
label define easy3 1 "Neg" 2 "Neu" 3 "Pos"
label values Easy3 easy3

ologit Easy3 i.Group_num
brant
ologit Easy3 ib2.Group_num
brant

gologit2 Easy3 i.Group_num, autofit
gologit2 Easy3 ib2.Group_num, autofit
************************************************************
*Job Relevance: "Learning to use GenAI tools is relevant to my (future) career in __."
gen J3 = .
replace J3 = 1 if inlist(Job, 1, 2)
replace J3 = 2 if Job == 3
replace J3 = 3 if inlist(Job, 4, 5)
label define j3 1 "Neg" 2 "Neu" 3 "Pos"
label values J3 j3

ologit J3 i.Group_num
brant
ologit J3 ib2.Group_num
brant

gologit2 J3 i.Group_num, autofit
gologit2 J3 ib2.Group_num, autofit
************************************************************
*Subjective norm: "(People who influence my behavior) think I should use GenAI tools for __."
gen N33 = .
replace N33 = 1 if inlist(Norm, 1, 2)
replace N33 = 2 if Norm == 3
replace N33 = 3 if inlist(Norm, 4, 5)
label define n33 1 "Neg" 2 "Neu" 3 "Pos"
label values N33 n33

ologit N33 i.Group_num
brant
ologit N33 ib2.Group_num
brant

gologit2 N33 i.Group_num, autofit
gologit2 N33 ib2.Group_num, autofit
************************************************************
*Voluntariness: "My use of GenAI tools in __ is voluntary."
gen Vol3 = .
replace Vol3 = 1 if inlist(Voluntariness, 1, 2)
replace Vol3 = 2 if Voluntariness == 3
replace Vol3 = 3 if inlist(Voluntariness, 4, 5)
label define vol3 1 "Neg" 2 "Neu" 3 "Pos"
label values Vol3 vol3

ologit Vol3 i.Group_num
brant
ologit Vol3 ib2.Group_num
brant

gologit2 Vol3 i.Group_num, autofit
gologit2 Vol3 ib2.Group_num, autofit
************************************************************
*Output quality: "The quality of the output I get from GenAI tools is high and satisfactory."
gen Out3 = .
replace Out3 = 1 if inlist(Output, 1, 2)
replace Out3 = 2 if Output == 3
replace Out3 = 3 if inlist(Output, 4, 5)
label define out3 1 "Neg" 2 "Neu" 3 "Pos"
label values Out3 out3

ologit Out3 i.Group_num
brant
ologit Out3 ib2.Group_num
brant

gologit2 Out3 i.Group_num, autofit
gologit2 Out3 ib2.Group_num, autofit
************************************************************
*Understand: Result Demonstrability - "I find it easy to explain how I used GenAI tools and to help others understand the results"
gen Un3 = .
replace Un3 = 1 if inlist(Understand, 1, 2)
replace Un3 = 2 if Understand == 3
replace Un3 = 3 if inlist(Understand, 4, 5)
label define un3 1 "Neg" 2 "Neu" 3 "Pos"
label values Un3 un3

ologit Un3 i.Group_num
brant
ologit Un3 ib2.Group_num
brant

gologit2 Un3 i.Group_num, autofit
gologit2 Un3 ib2.Group_num, autofit
************************************************************
*Benefit: Result Demonstrability - "I can easily explain the benefits of using GenAI tools for __ to others."
gen Be3 = .
replace Be3 = 1 if inlist(Benefit, 1, 2)
replace Be3 = 2 if Benefit == 3
replace Be3 = 3 if inlist(Benefit, 4, 5)
label define be3 1 "Neg" 2 "Neu" 3 "Pos"
label values Be3 be3

ologit Be3 i.Group_num
brant
ologit Be3 ib2.Group_num
brant

gologit2 Be3 i.Group_num, autofit
gologit2 Be3 ib2.Group_num, autofit
************************************************************
*Intention: Intention to Use - "Assuming I have access to GenAI tools, I intend to use them for __."
gen Int3 = .
replace Int3 = 1 if inlist(Intention, 1, 2)
replace Int3 = 2 if Intention == 3
replace Int3 = 3 if inlist(Intention, 4, 5)
label define int3 1 "Neg" 2 "Neu" 3 "Pos"
label values Int3 int3

ologit Int3 i.Group_num
brant
ologit Int3 ib2.Group_num
brant

gologit2 Int3 i.Group_num, autofit
gologit2 Int3 ib2.Group_num, autofit
************************************************************
*Continue: : Intention to Use - "Given that I have access to GenAI tools, I will continue using them for __."
gen Con3 = .
replace Con3 = 1 if inlist(Continue, 1, 2)
replace Con3 = 2 if Continue == 3
replace Con3 = 3 if inlist(Continue, 4, 5)
label define con3 1 "Neg" 2 "Neu" 3 "Pos"
label values Con3 con3

ologit Con3 i.Group_num
brant
ologit Con3 ib2.Group_num
brant

gologit2 Con3 i.Group_num, autofit
gologit2 Con3 ib2.Group_num, autofit
************************************************************
* Notes:
* - Assumes working directory is repo root
* - Make sure gologit2 is installed (`ssc install gologit2`)
* - Models compare stakeholder groups on 15 Likert-scale dimensions
************************************************************
