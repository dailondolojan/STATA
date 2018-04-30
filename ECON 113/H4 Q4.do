use "/Users/dailondolojan/desktop/stata_data/ceo_salary", clear

*Question 4*
*PART A*
reg salary sales roe ros indus finance consprod

*The regression equation is as follows:*
*salary = 715.751+0.011sales+7.970roe−2.143ros+279.768indus+552.465finance+
*         +948.114consprod*
*For every 1 unit increase in firm sales there will be an 0.11 unit increase in* 
*in salary*

*PART B*
*Consprod is stastically significant at the 95% level.*

*PART C*
test _b[roe]=10
*With this test, we receive an F-statistic of 0.03 with a corresponding p-value*
*of 0.8724. Therefore we cannot reject the null hypothesis of the coefficient*
*being equal to 10*

*PART D*
reg salary sales roe ros
reg salary sales roe ros indus finance consprod
test (indus=0) (finance=0) (consprod=0)
