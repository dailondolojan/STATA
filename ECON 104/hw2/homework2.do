*Dailon Dolojan ID#(1425273)
*4/19/18
*ECON 104
*Homework 2

set more off 
clear all 
global dir = "/Users/dailondolojan/Desktop/stata_data/econ104/hw2"
cd "${dir}" 
use "${dir}/comp_ia_bootstrap1.dta", clear 

*** Problem 1:

label variable contact "Individual picked up the phone" 
label variable female "Gender of Individual" 
label variable age "Age of Individual" 
label variable newreg "Newly Registered Voters" 
label variable vote00 "Vote in 00"
label variable vote98 "Vote in 98"


eststo untreated: estpost summarize female age newreg vote00 vote98  if contact == 0  
eststo treated: estpost summarize  female age newreg vote00 vote98 if contact == 1  
eststo difference: estpost ttest female age newreg vote00 vote98, by(contact) unequal  

esttab untreated treated difference using "${dir}/balance_check_1.rtf", cells("mean(pattern(1 1 0) fmt(2)) sd(pattern(1 1 0)) b(star pattern(0 0 1) fmt(2)) p(pattern(0 0 1) par fmt(2))") plain label replace 

*** Problem 4:
reg vote02 contact 
outreg2 using "${dir}/reg_1_s.xls", replace nonote se label bdec(3)

reg vote02 contact female 											 	
outreg2 using "${dir}/reg_1_s.xls", append nonote se label bdec(3) 	

reg vote02 contact female age 
outreg2 using "${dir}/reg_1_s.xls", append nonote se label bdec(3) 

reg vote02 contact female age newreg 
outreg2 using "${dir}/reg_1_s.xls", append nonote se label bdec(3) 

reg vote02 contact female age newreg vote00  
outreg2 using "${dir}/reg_1_s.xls", append nonote se label bdec(3) 

reg vote02 contact female age newreg vote00 vote98  
outreg2 using "${dir}/reg_1_s.xls", append nonote se label bdec(3) 
