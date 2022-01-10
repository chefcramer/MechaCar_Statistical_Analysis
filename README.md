# MechaCar_Statistical_Analysis
# Overview of Project
# Results
## Linear Regression to Predict MPG

Using the provided MechaCar_mpg.csv file, linear regression was used to predict the Fuel Efficeiency of the 50 prototype cars. We used 5 different variables to examine the effect that they had on fuel efficenecy (MPG), The Vehicle Length, The Vehicle Weight, The Spoiler Angle, Ground Clearance, and Drive Train (AWD). 

![linear_regression](https://github.com/chefcramer/MechaCar_Statistical_Analysis/blob/main/Resources/deliv_1_5.PNG)

Using the summary() function of this linear regression we determined the P-Values and the R-Squared Values.

![summary_regression](https://github.com/chefcramer/MechaCar_Statistical_Analysis/blob/main/Resources/deliv_1_6.PNG)

If we assume the "standard" .05 significance level, the individual P-Values show that the Vehicle Weight, Spoiler Angle and Drive Train (AWD) variables are all above our signifigance level. Being above the significance level, they are statistacally **likely to provide random variance** to the linear model, equivalent to "flipping a coin". Also, being above the significance level, there is reason to **not reject** our null hypothesis. **Drive Train, Vehicle Weight and Spoiler Angle do not appear to have a statistical impact on Fuel Effeciency.**

Additionally, if we continue to assume the standard .05 significance level, the individual P-Values of Vehicle Length and Ground Clearence are below our significance level. Being below the significance level, they are statistacally **unlikely to provide random variance** to our linear model. Also, being below the significance level there is reason **to reject** our null hypothesis, there is a clear relationship between Vehicle Length, Ground Clearence and MPG. **Vehicle Length and Ground Clearence do appear to have a statistical impact on Fuel Efficency."

The R-Squared Value is .71, which means that around 70% of the variability of the data can be explained using this linear regression model. As i have learned in this module, the closer to 1 a R-Squared value is, the better a model is at predicting data. The P-Value for the model is 5.35e-11 (a VERY small p-value) there is clearly some significant statistical relationships in this data.

