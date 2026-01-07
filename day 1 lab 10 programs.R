#1
library(ggplot2)
weight_height_data <- data.frame(
  Weight = c(60, 65, 70, 72, 75),
  Height = c(170, 175, 168, 180, 178)
)
ggplot(weight_height_data, aes(x = Weight, y = Height)) +
  geom_point(color = "blue", size = 3) +
  labs(title = "Weight vs. Height",
       x = "Weight (kg)",
       y = "Height (cm)") +
  theme_minimal()

#2
year_population_data <- data.frame(
  Year = 2010:2014,
  Population = c(1000, 1020, 1040, 1060, 1080)
)
ggplot(year_population_data, aes(x = Year, y = Population)) +
  geom_line(color = "green", size = 1) +
  geom_point(color = "red", size = 3) +
  labs(title = "Year vs. Population",
       x = "Year",
       y = "Population (millions)") +
  theme_minimal()

#3
sales_data <- data.frame(
  Product = c("A", "B", "C", "D", "E"),
  Sales = c(300, 450, 500, 350, 400)
)
ggplot(sales_data, aes(x = Product, y = Sales, fill = Product)) +
  geom_bar(stat = "identity") +
  labs(title = "Sales by Product",
       x = "Product",
       y = "Sales") +
  theme_minimal()

#4
age_data <- data.frame(
  Age = c(25, 30, 35, 40, 45, 50, 55, 60, 65, 70)
)
ggplot(age_data, aes(x = Age)) +
  geom_histogram(binwidth = 5, fill = "purple", color = "black", alpha = 0.7) +
  labs(title = "Age Distribution",
       x = "Age",
       y = "Frequency") +
  theme_minimal()

#5
market_share_data <- data.frame(
  Company = c("A", "B", "C", "D"),
  Market_Share = c(20, 30, 25, 25)
)
ggplot(market_share_data, aes(x = "", y = Market_Share, fill = Company)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y") +
  labs(title = "Market Share by Company",
       x = NULL,
       y = NULL) +
  theme_void() +
  theme(legend.position = "right")

#6
scores_data <- data.frame(
  Class = c("A", "A", "A", "A", "B", "B", "B", "B"),
  Scores = c(85, 90, 78, 92, 88, 76, 80, 84)
)
ggplot(scores_data, aes(x = Class, y = Scores, fill = Class)) +
  geom_boxplot() +
  labs(title = "Exam Scores by Class",
       x = "Class",
       y = "Scores") +
  theme_minimal()

#7
weights_data <- data.frame(
  Weight = c(60, 65, 70, 75, 80, 85, 90, 95, 100)
)
ggplot(weights_data, aes(x = Weight)) +
  geom_density(fill = "lightblue") +
  labs(title = "Density Plot of Weights",
       x = "Weight (kg)",
       y = "Density") +
  theme_minimal()

#8
scores_group_data <- data.frame(
  Group = c("X", "X", "X", "X", "Y", "Y", "Y", "Y"),
  Score = c(80, 85, 78, 92, 88, 76, 80, 84)
)
ggplot(scores_group_data, aes(x = Group, y = Score, fill = Group)) +
  geom_violin() +
  labs(title = "Scores by Group",
       x = "Group",
       y = "Score") +
  theme_minimal()

#9
temperature_data <- data.frame(
  Month = c("Jan", "Feb", "Mar", "Apr", "May"),
  City_A = c(5, 6, 7, 8, 9),
  City_B = c(10, 11, 12, 13, 14),
  City_C = c(15, 16, 17, 18, 19)
)

# Reshape data for heatmap
library(reshape2)
melted_data <- melt(temperature_data, id.vars = "Month")

# Plot heatmap
ggplot(melted_data, aes(x = Month, y = variable, fill = value)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Monthly Temperatures",
       x = "Month",
       y = "City") +
  theme_minimal()

#10
sales_region_data <- data.frame(
  Month = c("Jan", "Jan", "Feb", "Feb", "Mar", "Mar"),
  Region = c("East", "West", "East", "West", "East", "West"),
  Sales = c(200, 150, 220, 170, 210, 160)
)
ggplot(sales_region_data, aes(x = Month, y = Sales, fill = Region)) +
  geom_bar(stat = "identity", position = "dodge") +
  facet_wrap(~ Region) +
  labs(title = "Sales by Month and Region",
       x = "Month",
       y = "Sales") +
  theme_minimal()





