# 📊 EXPT 6 — Implementation of Multivariate Displays (R)

## 📌 Objective
To implement **advanced multivariate displays** for complex data analysis and meaningful visual communication.

---

## 🏙️ Scenario
A **retail analytics firm** analyzes business data to study patterns across multiple variables such as:

- Sales  
- Profit  
- Discount  
- Region  
- Product Category  

This helps in optimizing business strategy and decision-making.

---

## ✅ Multivariate Visualizations Used

### 1️⃣ Parallel Coordinate Plot
**Purpose:** Compare multiple numerical features together  
- Sales  
- Profit  
- Discount  
Grouped by → **Region**

---

### 2️⃣ Bubble Chart
**Visual Encoding Used**
- Sales → X-axis  
- Profit → Y-axis  
- Discount → Bubble Size  
- Region → Color  

---

### 3️⃣ Trellis Display (Facet Plot)
**Purpose:** Break a large plot into smaller region-wise plots  
- Total Sales by Product Category  
Faceted by → **Region**

---

## 📂 Dataset Columns (Required)
Your dataset should contain at least these columns:

- Sales  
- Profit  
- Discount  
- Region  
- Product_Category  

---

## 🛠️ Tools / Libraries Used

- R / RStudio
- ggplot2
- GGally

## 📥 Install Required Packages

install.packages("ggplot2")

install.packages("GGally")
