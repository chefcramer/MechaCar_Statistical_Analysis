# MechaCar_Statistical_Analysis
# Overview of Project
# Results
## Linear Regression to Predict MPG

Using the provided MechaCar_mpg.csv file, linear regression was used to predict the Fuel Efficeiency of the 50 prototype cars. We used 5 different variables to examine the effect that they had on fuel efficenecy (MPG), The Vehicle Length, The Vehicle Weight, The Spoiler Angle, Ground Clearance, and Drive Train (AWD). 

![linear_regression](https://github.com/chefcramer/MechaCar_Statistical_Analysis/blob/main/Resources/deliv_1_5.PNG)

Using the summary() function of this linear regression we determined the P-Values and the R-Squared Values.

![summary_regression](https://github.com/chefcramer/MechaCar_Statistical_Analysis/blob/main/Resources/deliv_1_6.PNG)

If we assume the "standard" .05 significance level, the individual P-Values show that the Vehicle Weight, Spoiler Angle and Drive Train (AWD) variables are all above our signifigance level. Being above the significance level, they are statistacally **likely to provide random variance** to the linear model, equivalent to "flipping a coin". Also, being above the significance level, there is reason to **not reject** our null hypothesis. **Drive Train, Vehicle Weight and Spoiler Angle do not appear to have a statistical impact on Fuel Effeciency.**

Additionally, if we continue to assume the standard .05 significance level, the individual P-Values of Vehicle Length and Ground Clearence are below our significance level. Being below the significance level, they are statistacally **unlikely to provide random variance** to our linear model. Also, being below the significance level there is reason **to reject** our null hypothesis, there is a clear relationship between Vehicle Length, Ground Clearence and MPG. **Vehicle Length and Ground Clearence do appear to have a statistical impact on Fuel Efficency.**

The R-Squared Value is .71, which means that around 70% of the variability of the data can be explained using this linear regression model. As i have learned in this module, the closer to 1 a R-Squared value is, the better a model is at predicting data. The P-Value for the model is 5.35e-11 (a VERY small p-value) there is clearly some significant statistical relationships in this data.

## Summary Statistics on Suspension Coils

We used the suspension coil csv file provided to determine if the manufactruring process was consistant across multiple production lots for suspension coils. We initially summarized the dataframe using the summarize() function. We extracted the mean, median, variance and standard deviation of the PSI column in the suspension coil data.

![total_summary_code](https://github.com/chefcramer/MechaCar_Statistical_Analysis/blob/main/Resources/deliv_2_3.PNG)
![total_summary_results](https://github.com/chefcramer/MechaCar_Statistical_Analysis/blob/main/Resources/deliv_2_3_2.PNG)

We further refined this data to group the results by the lot number, using the group_by() and summarize() functions.

![lot_summary_code](https://github.com/chefcramer/MechaCar_Statistical_Analysis/blob/main/Resources/deliv_2_4.PNG)
![lot_summary_results](https://github.com/chefcramer/MechaCar_Statistical_Analysis/blob/main/Resources/deliv_2_4_2.PNG)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. On the total summary table, the variance is 62.29. Over all lots of production, the variance is with in the 100 PSI tolerance range. 

However if we look at the individual lots, there appears to be a problem with the lot 3 production run. Lot1 and lot2 have a variance of .9796 and 7.4694 respectively. These are both **well below** the 100PSI tolerance. Also, lots 1 and 2 have standard deviations of .9897 and 2.7330 respectively, both of which are quite low and refelcet a genearlly homogenious set of data. Lot3 however has a varaince of 170.2861, well above the 100PSI required and a standard deviation of 13.0493. This indicates that something likely went wrong in the manufacturing process and there is a wide range of numbers in this data set, with a predicted high number of outliers.
