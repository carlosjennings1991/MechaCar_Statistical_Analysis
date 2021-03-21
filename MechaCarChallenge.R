library(dplyr)
MechaCar_mpg_df <- read.csv("MechaCar_mpg.csv")
# First clear single linear regressions
length_to_mpg <- lm(vehicle_length ~ mpg, MechaCar_mpg_df)
weight_to_mpg <- lm(vehicle_weight ~ mpg, MechaCar_mpg_df)
angle_to_mpg <- lm(spoiler_angle ~ mpg, MechaCar_mpg_df)
clearance_to_mpg <- lm(ground_clearance ~ mpg, MechaCar_mpg_df)
awd_to_mpg <- lm(AWD ~ mpg, MechaCar_mpg_df)
mpg_to_mpg <- lm(mpg ~mpg, MechaCar_mpg_df)

# Plot all the single linear summaries 

## First summary: Length to MPG
plot(mpg, vehicle_length, main="Length to MPG", xlab="MPG", ylab="Vehicle Length (in feet)", pch=19)
abline(lm(vehicle_length~mpg), col="red")

## Second summary: Weight to MPG
plot(mpg, vehicle_weight, main="Weight to MPG", xlab="MPG", ylab="Vehicle Weight (in pounds)", pch=19)
abline(lm(vehicle_weight~mpg), col="red")

## Third summary: Spoiler Angle to MPG
plot(mpg, spoiler_angle, main="Spoiler Angle to MPG", xlab="MPG", ylab="Spoiler Angle", pch=19)
abline(lm(spoiler_angle~mpg), col="red")

## Fourth summary: Ground Clearance to MPG
plot(mpg, ground_clearance, main="Clearance to MPG", xlab="MPG", ylab="Ground Clearance (in inches)", pch=19)
abline(lm(ground_clearance~mpg), col="red")

## Fifth summary: AWD to MPG
plot(mpg, AWD, main="AWD to MPG", xlab="MPG", ylab="AWD", pch=19)
abline(lm(AWD~mpg), col="red")

## Sixth summary: MPG to MPG
plot(mpg, mpg, main="MPG to MPG (perfect correlation", xlab="MPG", ylab="MPG", pch=19)


### Save all of the plots (both versions i.e with and without line of best fits)

## Perform a multiple line regression and view the statistical summary
all_variables_mlr <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg_df)
summary(all_variables_mlr)


## Deliverable 2 Below: 

## Read in the CSV
suspension_coil_df = read.csv("Suspension_Coil.csv")

## Create a the total summary data frame
total_summary <- suspension_coil_df %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=sd(PSI) ** 2,SD=sd(PSI))

## Create the lot summary data frame, which is like the df above but grouped by Lot Size
lot_summary <- suspension_coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=sd(PSI) ** 2,SD=sd(PSI))


## Deliverable 3 Below: 

# Create a sample from the population data
sample_table <- suspension_coil_df %>% sample_n(50)

# Compare the sample to the population using a t-test
t.test(log10(sample_table$PSI),mu=mean(log10(suspension_coil_df$PSI)))

# Now compare each lot's PSI metrics to the Population
# Step 1: Create a data frame for each lot
lot1_df <- subset(suspension_coil_df, Manufacturing_Lot=='Lot1')
lot2_df <- subset(suspension_coil_df, Manufacturing_Lot=='Lot2')
lot3_df <- subset(suspension_coil_df, Manufacturing_Lot=='Lot3')

# Step 2: Compare each lot to the Population
t.test(log10(lot1_df$PSI),mu=mean(log10(suspension_coil_df$PSI)))
t.test(log10(lot2_df$PSI),mu=mean(log10(suspension_coil_df$PSI)))
t.test(log10(lot3_df$PSI),mu=mean(log10(suspension_coil_df$PSI)))

