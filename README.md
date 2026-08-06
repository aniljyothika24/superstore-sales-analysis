# 📊 Superstore Sales & Profitability Analysis

## 📌 Project Overview

This project analyzes the sales, profit, discount patterns, customer segments, and regional performance of a retail Superstore dataset using **Python, SQL, and Power BI**.

The project demonstrates the complete data analytics workflow:

- Data Cleaning using Python (Pandas)
- Data Analysis using SQL
- Dashboard Creation using Power BI
- Business Insight Generation

---

## 🛠️ Tools & Technologies Used

- **Python**
- Pandas
- Jupyter Notebook

- **SQL**
- MySQL Workbench

- **Power BI**
- Data Modeling
- DAX Measures
- Interactive Dashboards
- Slicers and KPIs

---

## 📂 Project Workflow

### 1. Data Cleaning (Python)

The raw Superstore dataset was cleaned using Python and Pandas.

Data cleaning steps included:

- Removing duplicate records
- Handling missing values
- Correcting data types
- Standardizing column names
- Creating a cleaned dataset for analysis

Output:
- `cleaned_superstore.csv`

---

### 2. SQL Analysis

The cleaned dataset was imported into MySQL and analyzed using SQL queries.

SQL concepts used:

- GROUP BY
- ORDER BY
- Aggregate Functions
- Subqueries
- Filtering
- Sorting
- Business KPI calculations

Example business questions answered:

- Which category generates the highest sales?
- Which category provides the highest profit?
- Which customer segment contributes the most revenue?
- Which states are the most profitable?
- Which shipping mode provides the best profit margin?
- Which category receives the highest discount?

---

### 3. Power BI Dashboard

An interactive dashboard was created using Power BI.

### KPIs Created

- Total Sales
- Total Profit
- Total Orders
- Average Discount

### Dashboard Visuals

#### Page 1 – Executive Overview

- Sales Trend Over Time
- Sales by Category
- Sales by Region
- Sales by Segment
- Sales by State

#### Page 2 – Profitability Analysis

- Profit by Category
- Profit Margin by Category
- Average Discount by Category
- Top Performing States
- Shipping Mode Analysis
- Key Business Insights

---

## 📈 DAX Measures Used

```DAX
Total Sales = SUM(cleaned_superstore[sales])

Total Profit = SUM(cleaned_superstore[profit])

Total Orders = DISTINCTCOUNT(cleaned_superstore[order_id])

Average Discount = AVERAGE(cleaned_superstore[discount])

Profit Margin =
DIVIDE([Total Profit],[Total Sales],0)
```

---

## 🔍 Key Business Insights

### Category Analysis

- Technology generated the highest sales and profit.
- Office Supplies achieved the highest profit margin.
- Furniture received the highest discounts but produced the lowest profitability.

### Customer Segment Analysis

- Consumer segment contributed the highest revenue and profit.

### Regional Analysis

- California generated the highest sales.
- New York delivered profit comparable to California despite lower sales.

### Shipping Analysis

- Standard Class generated the highest sales and profit.
- First Class shipping showed better profit efficiency.

### Discount Analysis

- Higher discounts in Furniture reduced profitability.


## 📁 Project Structure

```text
Superstore-Sales-Analysis/
│
├── data/
│ ├── superstore.csv
│ └── cleaned_superstore.csv
│
├── python/
│ └── data_cleaning.ipynb
│
├── sql/
│ └── analysis_queries.sql
│
├── powerbi/
│ └── superstore_powerbi_analysis.pbix
│
├── dashboard/
│ ├── dashboard_page1.png
│ └── dashboard_page2.png
│
└── README.md
```

---

## 🎯 Skills Demonstrated

- Data Cleaning
- Exploratory Data Analysis
- SQL Query Writing
- DAX Measures
- Power BI Dashboard Design
- Business Insight Generation
- Data Visualization

---

## 👩‍💻 Author

**Jyothika**

Tools Used: Python | SQL | Power BI
