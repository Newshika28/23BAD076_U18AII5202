# ============================================
# EXPT NO: 3 - Designing Multivariate Patterns
# Roll No: 23BAD076
# ============================================

# Load required library
library(ggplot2)

# Dataset already imported using Session -> Import Dataset
head(health_data)

# Create Age Groups
health_data$AgeGroup <- cut(
  health_data$Age,
  breaks = c(0, 30, 45, 60, 100),
  labels = c("Young", "Middle-aged", "Senior", "Elder")
)

# Scatter Plot Matrix
pairs(
  health_data[, c("Age", "BMI", "Glucose_Level", "Blood_Pressure")],
  col = as.numeric(health_data$AgeGroup),
  pch = 19,
  main = "Scatter Plot Matrix of Health Indicators"
)

# Correlation Analysis
cor_matrix <- cor(
  health_data[, c("Age", "BMI", "Glucose_Level", "Blood_Pressure")]
)

print(cor_matrix)