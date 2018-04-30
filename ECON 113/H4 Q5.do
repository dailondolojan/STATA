use "/Users/dailondolojan/desktop/stata_data/ceo_salary", clear

*Question 5*
*PART A*
sum sales, detail 
drop if sales >= r(p95) | sales <= r(p5)
reg salary sales roe ros indus finance consprod

*The coefficients and statistical significange of the variables barely change*
*The only differences noted would have to be the coeeficients and standard*
* of sales is larger and roe is smaller which does not influence the*
* signifigance*

*PART B*
sum sales, detail
replace sales = r(p95) if sales >= r(p95)
replace sales = r(p5) if sales <= r(p5)
reg salary sales roe ros indus finance consprod

*The roe coefficient increases and is not significant with the other variables*
*changing a little bit.*

*PART C*
gen ln_sal = ln(salary)
reg ln_sal sales roe ros indus finance consprod

*The coefficients have all decreased and are now statistically significant at*
*a 95% CI level with the R^2 term being increased as well.*
