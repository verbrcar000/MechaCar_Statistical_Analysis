library(dplyr)

## Read in MechaCar_mpg.csv
df <- read.csv('MechaCar_mpg.csv')
df

## Run multiple linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=df) 

## Summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=df))

## Read in Suspension_Coil.csv
coil.table <- read.csv('Suspension_Coil.csv')
coil.table

## Generate total_summary dataframe
total_summary <- summarize(coil.table, mean=mean(PSI), median=median(PSI),
                           var=var(PSI),sd=sd(PSI))
total_summary

## Generate lot_summary dataframe
lot_tibble <- coil.table %>% group_by(Manufacturing_Lot) %>% 
  summarize(mean=mean(PSI), median=median(PSI),
            var=var(PSI),sd=sd(PSI),
            .groups = 'drop')

lot_summary <- lot_tibble %>% as.data.frame()
lot_summary

## T-test on suspension coils across all lots
population_mean <- 1500
t.test(coil.table$PSI, mu=population_mean)

## T-tests by lot
lot1 <- subset(coil.table, Manufacturing_Lot == "Lot1")
lot2 <- subset(coil.table, Manufacturing_Lot == "Lot2")
lot3 <- subset(coil.table, Manufacturing_Lot == "Lot3")

t.test(lot1$PSI, mu=population_mean)
t.test(lot2$PSI, mu=population_mean)
t.test(lot3$PSI, mu=population_mean)
