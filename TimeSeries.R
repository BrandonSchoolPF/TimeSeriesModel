#Explanation and plots found on my personal website: 
#https://bvlschool.wordpress.com/2021/11/14/time-series-model/


#Creating initial data frame, each variable contains 12 different sets of data which corresponds to 12 months in a year
year_2012 <- c(31.9, 27, 31.3, 31, 39.4, 40.7, 42.3, 49.5, 45, 50, 50.9, 58.5)
year_2013 <- c(39.4, 36.2, 40.5, 44.6, 46.8, 44.7, 52.2, 54, 48.8, 55.8, 58.7, 63.4)

#Using timeseries function in R
year_tot <- c(year_2012, year_2013) #Creating variable with both years combined

year_tot.ts <- ts(year_tot, start = c(2012), frequency = 12) #Start year is 2012 but we set the frequency to 12 for months

plot.ts(year_tot.ts) #Here we create a line graph that plots the data from 2012-2014

#Prediciting Forecast using Holt Winter's Method
year_tot_forecasts <- HoltWinters(year_tot, beta = FALSE, gamma = FALSE)
year_tot_forecasts
year_tot_forecasts$fitted
plot(year_tot_forecasts)
