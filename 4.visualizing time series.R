#1 line plot 
setwd("C:/Users/nelab/OneDrive/Documents/DATA Hand&Visualisation")
getwd()
data <- read.csv("timeseries.csv")
data
library(ggplot2)
ggplot(data, aes(x = Month, y = ProductA, group = 1)) +
  geom_line() +
  geom_point()

#2 smoothing/moving average plot 
setwd("C:/Users/nelab/OneDrive/Documents/DATA Hand&Visualisation")
getwd()
data <- read.csv("timeseries.csv")
data
library(ggplot2)
ggplot(data, aes(x = Month, y = ProductA, group = 1)) +
  geom_line() +
  geom_smooth()

#3 seasonal decomposition 
setwd("C:/Users/nelab/OneDrive/Documents/DATA Hand&Visualisation")
getwd()
data <- read.csv("timeseries.csv")
data
ts_data <- ts(data$ProductA, frequency = 3)
plot(decompose(ts_data))


#4 multiple line plot 
setwd("C:/Users/nelab/OneDrive/Documents/DATA Hand&Visualisation")
getwd()
data <- read.csv("timeseries.csv")
data
library(ggplot2)
ggplot(data, aes(x = Month, group = 1)) +
  geom_line(aes(y = ProductA, color = "Product A")) +
  geom_line(aes(y = ProductB, color = "Product B"))

#5 Dose–Response Curve
setwd("C:/Users/nelab/OneDrive/Documents/DATA Hand&Visualisation")
getwd()
data <- read.csv("timeseries.csv")
data
library(ggplot2)
ggplot(data, aes(x = ProductA, y = ProductB)) +
  geom_line() +
  geom_point()




