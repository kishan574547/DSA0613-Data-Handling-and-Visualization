#1 choropeth map 
setwd("C:/Users/nelab/OneDrive/Documents/DATA Hand&Visualisation")
getwd()
data <- read.csv("geodata.csv")
data
library(ggplot2)
ggplot(data, aes(x = Longitude, y = Latitude, fill = Population)) +
  geom_tile()

#2 spatial heatmap 
setwd("C:/Users/nelab/OneDrive/Documents/DATA Hand&Visualisation")
getwd()
data <- read.csv("geodata.csv")
data
library(ggplot2)
ggplot(data, aes(x = Longitude, y = Latitude)) +
  stat_density2d()

#3 3d geospatial plot 
setwd("C:/Users/nelab/OneDrive/Documents/DATA Hand&Visualisation")
getwd()
data <- read.csv("geodata.csv")
data
library(ggplot2)
library(rgl)
plot3d(data$Longitude, data$Latitude, data$Population)

#4 interactive map 
setwd("C:/Users/nelab/OneDrive/Documents/DATA Hand&Visualisation")
getwd()
data <- read.csv("geodata.csv")
data
library(ggplot2)
library(leaflet)
leaflet(data) %>%
  addTiles() %>%
  addCircles(lng = ~Longitude,
             lat = ~Latitude,
             radius = ~Population * 1000)
install.packages("leaflet")

