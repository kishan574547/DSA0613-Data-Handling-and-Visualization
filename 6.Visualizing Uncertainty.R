#1 Confidence Interval Plot (Error Bars)
setwd("C:/Users/nelab/OneDrive/Documents/DATA Hand&Visualisation")
getwd()
list.files()
data <- read.csv("uncertain.csv")
data
library(ggplot2)
ggplot(data, aes(x = Group, y = Measurement)) +
  stat_summary(fun = mean, geom = "point") +
  stat_summary(fun.data = mean_se, geom = "errorbar")

#2 Bootstrapping / Density Plot
setwd("C:/Users/nelab/OneDrive/Documents/DATA Hand&Visualisation")
getwd()
list.files()
data <- read.csv("uncertain.csv")
data
library(ggplot2)
ggplot(data, aes(x = Measurement)) +
  geom_density()

#3 Jitter Plot
setwd("C:/Users/nelab/OneDrive/Documents/DATA Hand&Visualisation")
getwd()
list.files()
data <- read.csv("uncertain.csv")
data
library(ggplot2)
ggplot(data, aes(x = Group, y = Measurement)) +
  geom_jitter()

#4 2D Histogram / Contour Plot
setwd("C:/Users/nelab/OneDrive/Documents/DATA Hand&Visualisation")
getwd()
list.files()
data <- read.csv("uncertain.csv")
data
library(ggplot2)
ggplot(data, aes(x = Measurement, y = Group)) +
  geom_density_2d()

