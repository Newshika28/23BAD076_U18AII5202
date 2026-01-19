#..................
#Roll No : 23BAD076
#..................

library(ggplot2)
library(dplyr)
student_data <- read.csv("1.student_performance.csv")
head(student_data)
summary(student_data)
sum(is.na(student_data))
avg_marks <- student_data %>%
  group_by(Subject) %>%
  summarise(Mean_Marks = mean(Internal_Test1 + Internal_Test2, na.rm = TRUE))

# Plot the Bar Chart
ggplot(avg_marks, aes(x = Subject, y = Mean_Marks, fill = Subject)) +
  geom_bar(stat = "identity") +
  labs(title = "Subject-wise Average Internal Marks", y = "Average Marks")
test_trends <- data.frame(
  Test = c("Internal_Test1", "Internal_Test2"),
  Average = c(mean(student_data$Internal_Test1), mean(student_data$Internal_Test2))
)

# Plot the Line Chart
ggplot(test_trends, aes(x = Test, y = Average, group = 1)) +
  geom_line(color = "blue", size = 1) +
  geom_point(size = 3) +
  labs(title = "Performance Trend Across Tests", y = "Average Score")
grade_counts <- as.data.frame(table(student_data$Final_Grade))
colnames(grade_counts) <- c("Grade", "Count")

# Plot the Pie Chart
ggplot(grade_counts, aes(x = "", y = Count, fill = Grade)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y", start = 0) +
  labs(title = "Final Grade Distribution") +
  theme_void()

