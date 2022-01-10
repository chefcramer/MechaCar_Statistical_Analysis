
#Load the dplyr library
library(dplyr)

#deliverable 1
# read in the MechaCar csv file
cars_df <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)

#perform linear regression using lm(), passing all 6 variables and the dataframe as the data paramater
lm(mpg~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=cars_df)

#use summary() to determine the p-value and the r squared value
summary(lm(mpg~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=cars_df))


#deliverable 2
# read in the Suspension coil csv file
coil_df <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors = F)

#make a total summary dataframe using the summarize function to get the mean, median, variance, and standard dev of the PSI columns
total_summary <- coil_df %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI),.groups='keep')

#create lot_summary dataframe using group by and the summarize functions to group each lot my mean median variance and SD of the PSI column
lot_summary <- coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI),.groups='keep')

#deliverable 3
# use the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the 
# population mean of 1,500 pounds per square inch.
t.test(coil_df$PSI,mu=1500)

# write three more scripts using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically 
# different from the population mean of 1,500 pounds per square inch.

# Manufacturing Lot 1
t.test(subset(coil_df,Manufacturing_Lot=="Lot1")$PSI,mu=1500)

# Manufacturing Lot 2
t.test(subset(coil_df,Manufacturing_Lot=="Lot2")$PSI,mu=1500)

# Manufacturing Lot 3
t.test(subset(coil_df,Manufacturing_Lot=="Lot3")$PSI,mu=1500)

