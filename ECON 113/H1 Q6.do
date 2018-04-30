use "/Users/dailondolojan/desktop/stata_data/smoking_data.dta", clear 

*Question 6

*Part A
* The total number of people included in the data is:
count

* The following table describes how many people are white and non-white:
tab white

*Part B
* The following describes the minimum, maximum, and median annual income:
sum income, detail

*Part C
* The count of how many people have obtained each level of education and
* most common level of education shown below. This result does make sense
* because the highest frequency is at 12 years which corresponds to graduating
* high school as well as the majority of drop outs corresponding to sophomore
* year of high school. Students could graduate early or drop-out of college
* which corresponds to the values between 13.5 and 15. At 16 years there is a
* minor spike because of individuals graduating on time in a stereotypical 
* college setting.
tab educ

*Part D
* The education level of 17 year olds in the sample. This result makes sense 
* when you consider the fact that some 17 year olds have not completed high
* school or possibly have started school later which will skew the results of
* the data.
tab educ if age == 17

*Part E
* The mean and standard deviation of ciggarettes smoked per day.
sum cigs

*Part F
* The mean and standard deviation of cigarettes if a person has more than 12 
* years of education.
sum cigs if educ > 12
