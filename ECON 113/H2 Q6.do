use "/Users/dailondolojan/desktop/stata_data/college_gpa_1_", clear 

**Question 6**
**Answers are on written sheet of paper**

**Part A**
tab lecturesskipped

**Part B**
reg colGPA lecturesskipped

**Part C**
set obs 142
replace lecturesskipped = 20 if _n == 142
predict colGPAhat

**Part D**
gen perweek = lecturesskipped/30
reg colGPA perweek

**Part E**
gen nlcolGPA = log(colGPA)
reg nlcolGPA perweek
