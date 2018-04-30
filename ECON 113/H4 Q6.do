use "/Users/dailondolojan/desktop/stata_data/wages", clear

*Question 6*
*PART A*
reg wage IQ

*The Regression Equation is as follows:*
*wage = 1024.364 + 1.651IQ*
*Fore every 1 unit increase in IQ, wage will increase by 1.651 units*

*PART B*
gen noise1 = rnormal(0,50)
gen IQwithnoise1 = IQ + noise1
reg wage IQwithnoise1

*wage = 1176.654 + 0.145IQ*

gen noise2 = rnormal(0,50)
gen IQwithnoise2 = IQ + noise2
reg wage IQwithnoise2

*wage = 1184.749 + 0.066IQ*

gen noise3 = rnormal(0,50)
gen IQwithnoise3 = IQ + noise3
reg wage IQwithnoise3

*wage = 1170.719 + 0.205IQ*

gen noise4 = rnormal(0,50)
gen IQwithnoise4 = IQ + noise4
reg wage IQwithnoise4

*wage = 1182.512 + 0.087IQ*

gen noise5 = rnormal(0,50)
gen IQwithnoise5 = IQ + noise5
reg wage IQwithnoise5

*wage = 1182.528 + 0.089IQ*

*PART C*
sum IQ
correlate wage IQ, covariance

*The coefficients are smaller in PART B because of the random noises that were*
*added on.*

*PART D*
*We are observing attenuation bias where every addion of noise, the coefficent
*is attenuated by a multiple of 12.*
