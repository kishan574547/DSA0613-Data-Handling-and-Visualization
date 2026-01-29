#1 Bar Plot
setwd("C:/Users/nelab/OneDrive/Documents/DATA Hand&Visualisation")
getwd()
data = read.csv("sales.csv")
data
library(ggplot2)
ggplot(data, aes(x = Category, y = Sales)) +
geom_bar(stat = "identity")

#2 Grouped Bar Plot
setwd("C:/Users/nelab/OneDrive/Documents/DATA Hand&Visualisation")
getwd()
data = read.csv("sales.csv")
data
library(ggplot2)
ggplot(data, aes(x = Category, y = Sales, fill = Region)) +
geom_bar(stat = "identity", position = "dodge")

#3 Stacked Bar Plot
setwd("C:/Users/nelab/OneDrive/Documents/DATA Hand&Visualisation")
getwd()
data = read.csv("sales.csv")
data
library(ggplot2)
ggplot(data, aes(x = Category, y = Sales, fill = Region)) +
geom_bar(stat = "identity")

#4 Dot Plot
setwd("C:/Users/nelab/OneDrive/Documents/DATA Hand&Visualisation")
getwd()
data = read.csv("sales.csv")
data
library(ggplot2)
ggplot(data, aes(x = Sales, y = Category)) +
geom_point()

#5 Heatmap
setwd("C:/Users/nelab/OneDrive/Documents/DATA Hand&Visualisation")
getwd()
data = read.csv("sales.csv")
data
library(ggplot2)
ggplot(data, aes(x = Category, y = Region, fill = Sales)) +
geom_tile()

#6 Violin Plot
setwd("C:/Users/nelab/OneDrive/Documents/DATA Hand&Visualisation")
getwd()
data = read.csv("sales.csv")
data
library(ggplot2)
ggplot(data, aes(x = Category, y = Sales)) +
geom_violin()

#7 Ridgeline Plot
setwd("C:/Users/nelab/OneDrive/Documents/DATA Hand&Visualisation")
getwd()
data = read.csv("sales.csv")
data
library(ggridges)
ggplot(data, aes(x = Sales, y = Category)) +
geom_density_ridges()

#8 Histogram
setwd("C:/Users/nelab/OneDrive/Documents/DATA Hand&Visualisation")
getwd()
data = read.csv("sales.csv")
data
library(ggridges)
ggplot(data, aes(x = Sales)) +
geom_histogram()

#9 Density Plot
setwd("C:/Users/nelab/OneDrive/Documents/DATA Hand&Visualisation")
getwd()
data = read.csv("sales.csv")
data
library(ggridges)
ggplot(data, aes(x = Sales)) +
geom_density()

#10 Box Plot
setwd("C:/Users/nelab/OneDrive/Documents/DATA Hand&Visualisation")
getwd()
data = read.csv("sales.csv")
data
library(ggridges)
ggplot(data, aes(x = Category, y = Sales)) +
geom_boxplot()









