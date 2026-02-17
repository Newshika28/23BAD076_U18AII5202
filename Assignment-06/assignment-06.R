# ============================================================
# EXPT NO: 6 - IMPLEMENTATION OF MULTIVARIATE DISPLAYS
# ROLL NO: 23BAD076
# DATE: 24.01.2026
# ============================================================

# -----------------------------
# Load Required Libraries
# -----------------------------
library(ggplot2)
library(GGally)

# -----------------------------
# Load Dataset
# -----------------------------
retail <- read.csv("6.retail_business.csv")

# ============================================================
# 1) PARALLEL COORDINATE PLOT
# ============================================================

# Numeric columns + Region for grouping
pc_data <- retail[, c("Sales", "Profit", "Discount", "Region")]

ggparcoord(data = pc_data,
           columns = 1:3,
           groupColumn = 4,
           scale = "uniminmax") +
  ggtitle("Parallel Coordinate Plot (Sales, Profit, Discount) by Region") +
  theme_minimal()

# ============================================================
# 2) BUBBLE CHART
# ============================================================

ggplot(retail, aes(x = Sales, y = Profit, size = Discount, color = Region)) +
  geom_point(alpha = 0.7) +
  ggtitle("Bubble Chart: Sales vs Profit (Bubble Size = Discount)") +
  xlab("Sales") +
  ylab("Profit") +
  theme_minimal()

# ============================================================
# 3) TRELLIS DISPLAY BY REGION (BAR FORMAT)
# ============================================================

# Summarize Total Sales by Region and Product Category
sales_summary <- aggregate(Sales ~ Region + Product_Category, data = retail, sum)

ggplot(sales_summary, aes(x = Product_Category, y = Sales, fill = Product_Category)) +
  geom_bar(stat = "identity") +
  facet_wrap(~ Region) +
  ggtitle("Trellis Display (Bar): Total Sales by Category in Each Region") +
  xlab("Product Category") +
  ylab("Total Sales") +
  theme_minimal()
