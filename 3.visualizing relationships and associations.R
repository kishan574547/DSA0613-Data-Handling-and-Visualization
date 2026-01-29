#1 scatter  rplot 
setwd("C:/Users/nelab/OneDrive/Documents/DATA Hand&Visualisation")
getwd()
data <- read.csv("performance.csv")
data
library(ggplot2)
ggplot(data, aes(x = StudyHours, y = Marks)) +
  geom_point()

#2 Bubble Chart
setwd("C:/Users/nelab/OneDrive/Documents/DATA Hand&Visualisation")
getwd()
data <- read.csv("performance.csv")
data
library(ggplot2)
ggplot(data, aes(x = StudyHours, y = Marks, size = Attendance)) +
  geom_point()

#3 Hexbin Plot
library(hexbin)
setwd("C:/Users/nelab/OneDrive/Documents/DATA Hand&Visualisation")
getwd()
data <- read.csv("performance.csv")
data
library(ggplot2)
ggplot(data, aes(x = StudyHours, y = Marks)) +
  geom_hex()

#4 Correlogram
setwd("C:/Users/nelab/OneDrive/Documents/DATA Hand&Visualisation")
getwd()
data <- read.csv("performance.csv")
data
library(corrplot)
corrplot(cor(data[,2:4]))

#5 Network Graph
setwd("C:/Users/nelab/OneDrive/Documents/DATA Hand&Visualisation")
getwd()
data <- read.csv("performance.csv")
data
library(igraph)
g <- graph_from_data_frame(data)
plot(g)

#6 PCA / Dimensionality Reduction Plot

setwd("C:/Users/nelab/OneDrive/Documents/DATA Hand&Visualisation")
getwd()
data <- read.csv("performance.csv")
data
library(ggfortify)
autoplot(prcomp(data[,2:4]))


