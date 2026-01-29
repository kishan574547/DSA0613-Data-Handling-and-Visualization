#1 Pie Chart
setwd("C:/Users/nelab/OneDrive/Documents/DATA Hand&Visualisation")
getwd()
data = read.csv("students.csv")
data
library(ggplot2)
ggplot(data, aes(x = "", y = Count, fill = Department)) +
  geom_bar(stat = "identity") +
  coord_polar("y")

#2 Stacked Bar Chart
setwd("C:/Users/nelab/OneDrive/Documents/DATA Hand&Visualisation")
getwd()
data = read.csv("students.csv")
data
library(ggplot2)
ggplot(data, aes(x = Department, y = Count, fill = Year)) +
  geom_bar(stat = "identity")

#3 Treemap
setwd("C:/Users/nelab/OneDrive/Documents/DATA Hand&Visualisation")
getwd()
data = read.csv("students.csv")
data
library(treemapify)
ggplot(data, aes(area = Count, fill = Department)) +
  geom_treemap()

#4 Sunburst Chart
setwd("C:/Users/nelab/OneDrive/Documents/DATA Hand&Visualisation")
getwd()
data <- read.csv("students.csv")
data
# Create hierarchical data for sunburst
sb_data <- data.frame(
  seq = paste(data$Department, data$Year, sep = "-"),
  freq = data$Count
)
library(sunburstR)
sunburst(sb_data)


#5 Parallel Sets
setwd("C:/Users/nelab/OneDrive/Documents/DATA Hand&Visualisation")
getwd()
data = read.csv("students.csv")
data
library(ggalluvial)
ggplot(data, aes(axis1 = Department, axis2 = Year, y = Count)) +
  geom_alluvium() +
  geom_stratum()

#6 Sankey Diagram
setwd("C:/Users/nelab/OneDrive/Documents/DATA Hand&Visualisation")
getwd()
data = read.csv("students.csv")
data
library(networkD3)
nodes <- data.frame(
  name = unique(c(data$Department, data$Year))
)
links <- data.frame(
  source = match(data$Department, nodes$name) - 1,
  target = match(data$Year, nodes$name) - 1,
  value  = data$Count
)
sankeyNetwork(
  Links = links,
  Nodes = nodes,
  Source = "source",
  Target = "target",
  Value = "value",
  NodeID = "name",
  fontSize = 12
)









