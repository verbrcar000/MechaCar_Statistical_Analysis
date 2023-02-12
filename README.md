# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
Vehicle length and ground clearance provided a non-random amount of variance to the mpg values in the dataset. We know this because the p-values for vehicle length and ground clearance are less than 0.05 while the p-values for the other variables are greater than 0.05.

![summary_table](Screenshot1.png)

The slope of the linear model is not considered to be zero. If we use the coefficients seen below to generate the formula for the model, we get this:

mpg = 6.27(vehicle length)+.001(vehicle weight)+.07(spoiler angle)+3.55(ground clearance)-3.41(AWD)-0.01

![summary_table](Screenshot2.png)
