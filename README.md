# MechaCar Statistical Analysis

## Part 1: MPG Correlations

For this first analysis, we perform a linear regression on our first data set to see if any variables correlate to increased miles per gallon.

[Source Script Here](https://github.com/carlosjennings1991/MechaCar_Statistical_Analysis/blob/main/MechaCarChallenge.R)
<br>
[Source Data Here](https://github.com/carlosjennings1991/MechaCar_Statistical_Analysis/blob/main/MechaCar_mpg.csv)

Since multiple linear regressions are difficult to visualize, here are all the single multiple regressions. 

<img src="https://github.com/carlosjennings1991/MechaCar_Statistical_Analysis/blob/main/all_regressions.png">

As you can see above, none of the slopes are zero, each correlation has some slope, albeit some much more than others. 

The 6 plotted correlations are as follows: 

* Length (in Feet) to MPG
* Weight (in Pounds) to MPG
* Spoiler Angle to MPG
* Clearance Height (in Inches) to MPG
* AWD to MPG
* MPG to MPG (perfect correlation)

For example, length is the greatest predictor of increase in MPG. Somewhat surprisingly, weight is not a great predictor of MPG. 

Now, lets look at the summary statistics for the multiple line regression of all the variables. 

<img src="summary_statistics_table_MLR_outlined.png">

Again, we see that vehicle length has the steepest slope, with every 1 increase in miles per gallon, we have a 6.267e+00 increase in length. 

---
## Part 2: 
