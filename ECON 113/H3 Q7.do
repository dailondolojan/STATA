use "/Users/dailondolojan/desktop/stata_data/us_wage_sample", clear

**Question 7**
**Part A***
regress wage south

**Part B**
regress wage south educ

**Part C**
gen exp2=exper^2
gen exp3=exper^3
regress wage south educ exper exp2 exp3

**Part D**
**We might need data on the person's ethnicity, if they're married or not with**
**or without kids. Discrimination often occurs in the south which could affect 
**wages of POC. Marriage might also affect a person's wage depending on when **
**they marry and if they have kids**
