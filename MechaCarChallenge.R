
#Load the dplyr library
library(dplyr)


# read in the csv file
cars_df <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)

#perform linear regression using lm(), passing all 6 variables and the dataframe as the data paramater
lm(mpg~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=cars_df)

#use summary() to determine the p-value and the r squared value
summary(lm(mpg~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=cars_df))