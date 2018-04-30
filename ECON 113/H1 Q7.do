use "/Users/dailondolojan/desktop/stata_data/smoking_data.dta", clear

*Question 7

*Part A
* The correlation between income and cigarettes are given in the table below.
* One reason this data may be true could be that a worker will seek a higher
* income in order to afford a higher intake of ciggarettes. 
correlate income cigs

*Part B
* The correlation between education and cigarettes are given in the table below.
* One reason that supports that the data may be true could be that individuals 
* who smoke are more likely to drop out of school or stop their education 
* earlier.
correlate educ cigs

*Part C
* High income, low education seem to be the likely group to have the highest 
* rate of smoking. According to the data, there is a slighty positive 
* correlation between income and ciggarettes thus meaning higher income
* individuals smoke more ciggarettes. Also, there is a slightly negative
* correlation between education and ciggarettes thus meaning lower education
* individuals smoke more ciggarettes. This can be seen by the correlation table
* shown below
correlate income educ cigs
