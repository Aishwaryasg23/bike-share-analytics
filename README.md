# bike-share-analytics
Bike Share Analytics Dashboard using SQL &amp; Power BI — analyzing rider behavior, revenue, profitability, seasonality, and YoY growth.

📊 Project Overview

This project analyzes bike-sharing data to understand rider behavior, revenue generation, profitability, seasonal trends, and year-over-year business performance.

The project combines SQL-based data analysis with an interactive Power BI dashboard to transform raw bike-sharing data into meaningful business insights.

🎯 Business Objective

The primary objective of this project is to answer questions such as:

How many riders used the bike-sharing service?
How much revenue and profit were generated?
How does revenue vary by year and season?
Which rider type contributes the most revenue?
What are the highest-revenue days?
What is the overall profit margin?
How is revenue changing year over year?
How does cumulative revenue progress over time?
🛠️ Tools & Technologies
MySQL – Data preparation and analysis
SQL – Business queries and KPI calculations
Power BI – Interactive dashboard and data visualization
Window Functions – Running totals and year-over-year analysis
CTEs – Combining and transforming yearly datasets
🗂️ Project Structure
Bike-Share-Analytics/
│
├── Bike_share.sql
├── bike_shares_dashboard.pbix
└── README.md
🔄 Data Preparation

The project combines two yearly bike-share datasets using a Common Table Expression (CTE) and UNION ALL.

The datasets are then joined with the cost table to calculate important business metrics.

Key calculated metrics
Revenue
Riders × Price
Profit
Revenue − Cost of Goods Sold
Profit Margin
Profit ÷ Revenue × 100

A consolidated SQL view named bike_data was created to support downstream analysis and Power BI reporting.

📈 SQL Analysis

The project includes SQL queries for:

Key Performance Indicators
Total number of riders
Total revenue
Total profit
Profit margin
Total records
Business Performance
Revenue by year
Profit by year
Revenue and profit by season
Revenue by rider type
Top revenue-generating days
Advanced SQL Analysis

The project also uses SQL window functions to perform:

Running revenue analysis
Previous-year revenue comparison
Year-over-year revenue growth

For example, the LAG() window function is used to compare current-year revenue with the previous year's revenue.

📊 Power BI Dashboard

The SQL analysis is presented through an interactive Power BI dashboard.

The dashboard is designed to provide a high-level view of:

Revenue performance
Profitability
Rider activity
Seasonal trends
Rider-type performance
Revenue growth
Business KPIs
Dashboard

Add your Power BI dashboard screenshot here.

![Bike Share Dashboard](images/bike-share-dashboard.png)
🔍 Key Analytical Areas
1. Revenue Analysis

Examines revenue performance across years and seasons to identify periods of higher and lower business performance.

2. Profitability Analysis

Analyzes profit and profit margin to understand the financial performance of the bike-sharing service.

3. Rider Segmentation

Compares rider types based on total riders and revenue contribution.

4. Time-Series Analysis

Uses running totals and year-over-year comparisons to identify revenue trends over time.

5. Seasonal Analysis

Evaluates how bike-sharing demand and financial performance vary across seasons.

🧠 SQL Concepts Demonstrated

This project demonstrates practical use of:

CTEs
UNION ALL
JOINs
GROUP BY
Aggregate Functions
CASE / Calculated Metrics
Window Functions
LAG()
SUM() OVER()
ORDER BY
Subqueries
Views
💡 Skills Demonstrated

Through this project, I demonstrated my ability to:

Work with relational datasets
Build reusable SQL views
Perform business-oriented data analysis
Calculate financial KPIs
Use advanced SQL window functions
Perform time-series analysis
Segment customers/riders
Build interactive Power BI dashboards
Translate raw data into business insights
🚀 Future Improvements

Potential improvements to the project include:

Adding more granular customer segmentation
Analyzing hourly demand patterns
Creating a geographic analysis of bike usage
Adding additional Power BI drill-through pages
Implementing automated data refresh
Adding forecasting for future revenue and rider demand
📁 Files
File	Description
Bike_share.sql	SQL scripts for data preparation, KPI calculations, and analysis
bike_shares_dashboard.pbix	Power BI dashboard
README.md	Project documentation
