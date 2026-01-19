#..................
#Roll No : 23BAD076
#..................

library(ggplot2)
library(dplyr)
ecommerce_data <- read.csv("2.ecommerce_transactions.csv")
ecommerce_data$Transaction_Date <- as.Date(ecommerce_data$Transaction_Date)
ecommerce_data$Month <- format(ecommerce_data$Transaction_Date, "%B")
month_order <- c("January", "February", "March", "April", "May", "June", 
                 "July", "August", "September", "October", "November", "December")
ecommerce_data$Month <- factor(ecommerce_data$Month, levels = month_order)

# --- histogram of transaction amounts ---
ggplot(ecommerce_data, aes(x = Transaction_Amount)) +
  geom_histogram(fill = "steelblue", color = "white", bins = 30) +
  labs(title = "Distribution of Transaction Amounts", 
       x = "Transaction Amount", 
       y = "Frequency")

# --- boxplot to detect outliers ---
ggplot(ecommerce_data, aes(x = Product_Category, y = Transaction_Amount, fill = Product_Category)) +
  geom_boxplot() +
  labs(title = "Transaction Amount by Category (Outlier Detection)", 
       x = "Product Category", 
       y = "Transaction Amount")

# --- heatmap of monthly sales intensity ---
heatmap_summary <- ecommerce_data %>%
  group_by(Month, Region) %>%
  summarise(Total_Sales = sum(Transaction_Amount, na.rm = TRUE))
ggplot(heatmap_summary, aes(x = Month, y = Region, fill = Total_Sales)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red") +
  labs(title = "Monthly Sales Intensity Heatmap", 
       x = "Month", 
       y = "Region", 
       fill = "Total Sales") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

