# 📉 EXPT 7 — Over-Plotting Reduction Techniques (R)

## 📌 Objective
To apply effective techniques that **reduce visual clutter (over-plotting)** in large-scale datasets for better readability and correct analysis.

---

## 🏙️ Scenario
A **social media analytics company** visualizes millions of user interactions to study engagement patterns.

The goal is to clearly understand relationships between:
- Likes
- Comments  
even when the dataset is large and points overlap heavily.

---

## ❗ Problem: Over-Plotting
Over-plotting happens when many data points overlap in the same region of a plot, making it hard to identify:
- real trends
- clusters
- outliers
- rare behaviors

---

## ✅ Over-Plotting Reduction Techniques Used

### 1️⃣ Alpha Blending (Transparency)
**Visual Encoding Used**
- Overlap → darker points
- Density becomes visible through transparency

---

### 2️⃣ Jittering
**Visual Encoding Used**
- Adds small random noise to points
- Helps separate overlapping points and improves visibility

---

### 3️⃣ Aggregation & Binning (2D Bin Plot)
**Visual Encoding Used**
- Data density → shown using bin count color
- Best for huge datasets

---

## 📂 Dataset Columns (Expected)
Your dataset should contain at least:

- Likes  
- Comments  

---

## 🛠️ Tools / Libraries Used

- R / RStudio
- ggplot2
- readr

## 📥 Install Required Packages

install.packages("ggplot2")

install.packages("readr")
