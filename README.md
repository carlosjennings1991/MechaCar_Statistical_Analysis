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

For the second analysis, we review the PSI (pounds per square inch) of Suspension Coils from an automanufacturer who produces from 3 different facilities (i.e 'Lots'). On our first pass, we review the data as a whole -undifferentiated by group, and on the second pass we subdivided the data lot origin. 

[Source Data of Suspension Coils Here](https://github.com/carlosjennings1991/MechaCar_Statistical_Analysis/blob/main/Suspension_Coil.csv)

<img src="https://github.com/carlosjennings1991/MechaCar_Statistical_Analysis/blob/main/total_summary.png">

As we can see, the mean and median are closely grouped, with a very small PSI difference between them. We have a standard deviation of 7.89 PSI and raising this figure to the power of 2 gives us our Variance. 

Here is the line of code, written in R, that processed the original source data into our summary: 

*total_summary <- suspension_coil_df %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=sd(PSI) ** 2,SD=sd(PSI))*

<br>

Next, we review this data but grouped by origin lot. 

<img src="https://github.com/carlosjennings1991/MechaCar_Statistical_Analysis/blob/main/lot_summary.png">

This provides a much more precise picture of what's happening on the ground floor. We can see that Lot 1 performs very well, with a standard deviation with less than 1 PSI. Lot 2 is still pretty good, but the standard deviation is appreciably higher and Lot 3 has a dramatically higher standard deviation and variance. f

Below is the line of code that processed the original source data into our grouped summary. 

```diff@@lot_summary <- suspension_coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=sd(PSI) ** 2,SD=sd(PSI))@@
