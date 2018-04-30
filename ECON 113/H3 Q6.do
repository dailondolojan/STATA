use "/Users/dailondolojan/desktop/stata_data/us_wage_sample", clear

**Question 6**
**Part A***
summ wage if female==0
summ wage if female==1

**The male mean wage is 7.11 and the female mean wage is 4.56

**Part B**
summ wage if female==0 & married==0
summ wage if female==1 & married==0

**Unmarried male has an average wage of 5.16 while an unmarried female earns 4.64

**Part C**
regress wage educ exper tenure female married

**Part D**
gen fmar=female*married

regress wage educ exper tenure female married fmar

**Part E**
**Part B explains the wage gap between unmarried males and unmarried females**
**where males had a wage of $5.16 and females had a wage of $4.64.**
**This result makes sense because of the bias in predominately male society**
**Part D explains how the interaction term of female and married plays a **
**part in the regression. If we were to take the derivative as shown on the
**right in respect to wage/ female in order to control for education. **
**The wage gap would be -0.27 and if married would also decrease by -2.523.**
**This makes sense because married women usually have children which would**
**Decrease the amount of money they earn if they took time off for maternity**
**leave** 
