# MechaCar_Statistical_Analysis
# Overview of Project

A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

In this challenge, you’ll help Jeremy and the data analytics team do the following:
- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

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


## T-Tests on Suspension Coils

![t-test_all](https://github.com/chefcramer/MechaCar_Statistical_Analysis/blob/main/Resources/deliv_3_1.PNG)

This t-test compairs all suspension coils to the given mean population of 1500. The mean displayed here is **VERY** close to the mean population of 1500. If we continue to assume the signifigance value of .05, this tests P-Value is slightly higher at .0602. Howeve this IS over the .05 value, there for we cannot reject the null hypothesis. There is not a signifigant statistical difference between the mean population of 1500 and the sample mean across all manufactoring lots.

![t-test_lot1](https://github.com/chefcramer/MechaCar_Statistical_Analysis/blob/main/Resources/deliv_3_2.PNG)

This t-test was specifcally on the suspension coils in manufacturing Lot 1. The mean is exactly 1500, so it matches the given population mean of 1500, so the p value is exactly 1. We can conclude that there is no evidence to reject the null hypothesis. There is not a statistcal difference between the population mean and the mean for lot 1.

![t-test_lot2](https://github.com/chefcramer/MechaCar_Statistical_Analysis/blob/main/Resources/deliv_3_3.PNG)

This t-test was on the suspension coils in manufacturing Lot 2.The mean is 1500.2, again very similar to the given population mean of 1500. The p-value is .6072, which is higher than our assumed .05 signifigant value. We can conclude that there is no evidence to reject the null hypothesis. There is not a statistcal difference between the population mean and the mean for lot 2.

![t-test_lot3](https://github.com/chefcramer/MechaCar_Statistical_Analysis/blob/main/Resources/deliv_3_4.PNG)

This t-test was on the suspension coils in manufacturing Lot 3. The mean is 1496.14 similar to, but below the given mean of 1500. The P-Value is .04168, below our assumed .05 signifigant value. We can conclude that there **IS** evidence to reject our null hypotheses. There **IS** a statistical difference betweeen the population mean and the mean for lot 3. It seems like something farely significant went wrong with the Lot 3 production run, and the manufactoring logs need to be examined to determine what went wrong and where.

## Study Design: MechaCar vs Competition

There are many metrics that AutosRUs can use to compair their new project, MechaCar, to the competition. For Example, the metrics that I focus on when buying a car are:
- Cost
- Fuel Efficiency (Highway/City)
- Safety Rating
- Drive Train (all wheel or two wheel drive)
- Reliability (maintenance cost, life time of different systems)
- Size of Car (family friendly or not)

#### Metric to test
The most important metric to me when buying a car is the Safety Rating. The gold standard of data on this subject is of course the NHTSA | National Highway Traffic Safety Administration car safety rating. Comparing the data on the same type of car (approximately the same size, price, drive train and so on) to the equivelent MechaCar.

#### Hypothesis
H0: That there is no statistical difference between the population mean (the mean of the safety data aquired on the competition) and the observed mean of MechaCars safety ratings.
Ha: That there is a stistical difference between the population mean and the observed mean of MechaCars safety ratings.

#### Testing
This would be a one-sample t-test. The P-Value would give us an indication if MechaCar is statistically more or less safe than the competition. The goal of course is to have a P-Value below .05, and statistical proof to reject the null hypothesis, and prove that MechaCar is safer than the competition.
