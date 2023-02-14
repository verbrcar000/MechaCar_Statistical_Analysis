# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
1) Vehicle length and ground clearance provided a non-random amount of variance to the mpg values in the dataset. We know this because the p-values for vehicle length and ground clearance are less than 0.05 while the p-values for the other variables are greater than 0.05. This means vehicle length and grounhd clearance do have a significant impact on mpg. 

![summary_table](Screenshot1.png)

2) The slope of the linear model is not considered to be zero. If we use the coefficients seen below to generate the formula for the model, we get this:

mpg = 6.27(vehicle length)+.001(vehicle weight)+.07(spoiler angle)+3.55(ground clearance)-3.41(AWD)-0.01

![summary_table](Screenshot2.png)

3) The model has an R-squared value of 0.7149. This means that this model can predict mpg with a little more than 71% accuracy. Although clearly not perfect this level of accuracy is considered to be relatively effective. 

### Total Summary
![summary_table](Screenshot3.png)

### Summary by Lot
![summary_table](Screenshot4.png)

## T-Tests on Suspension Coils
In the t-test across all lots we see a p-value of 0.06. This is greater than 0.05 which means we cannot reject the null hypothesis. This tells us that the mean PSI across all lots is statistically similar to the population mean of 1,500.

![summary_table](Screenshot5.png)

In the t-tests run on lots 1 and 2, we get a similar result. The p-value from the t-test run on lot 1 was equal to 1 which means lot 1's average PSI was more statistically similar to the population mean than any other lot. A t-test run on lot 3 however, yields a different result with a p-value of 0.04. This is less than 0.05 so in this case, we can reject the null hypothesis. This tells us that lot 3's mean PSI is significantly different than the population mean. It would most certainly be worth looking into what went wrong with lot 3 and how to fix the problem. 

![summary_table](Screenshot6.png)
![summary_table](Screenshot7.png)
![summary_table](Screenshot8.png)

## Study Design: MechaCar vs Competition
In conducting a study to comare MechaCar vs the competition it would make the most sense to use price, fuel efficiency, horse power, maintenance cost, and safety rating as metrics. The null hypothesis would be that the means of each of these  MechaCar metrics are not statisically similar to those of competitors metrics. The alternative hypothesis would be that the means of the afformentioned MechaCar metrics are stastically similar to the same metrics of competitors cars.
