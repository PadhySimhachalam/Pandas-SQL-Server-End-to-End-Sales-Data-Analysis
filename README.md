 Orders Data Analysis with Python and SQL Server
-------------------------------------------------------------------------

-  A dynamic data analysis project built to clean, transform, and analyze retail sales data using Python (Pandas) and SQL Server.
- This project focuses on generating actionable insights across products, regions, categories, and time periods by combining Python ETL processes with SQL-based      analytics.

Description
-------------------------------------------------------------------------
- The Retail Orders Data Analysis Project is a complete data pipeline that transforms raw CSV data into structured insights.
- It helps to track sales, profit, discounts, product performance, and regional sales growth while identifying trends and opportunities.

Tech Stack
-------------------------------------------------------------------------
- Python (Pandas) – Data cleaning, transformation, and feature engineering
- SQLAlchemy -  Database connectivity and data loading
- SQL Server – Storage and analytical querying
- CSV – Raw dataset source

Data Source
-------------------------------------------------------------------------
Source: Orders dataset (orders.csv)
- Order details (Order ID, Date, Ship Mode, Segment, Region, Category, Sub-Category, Product ID)
- Pricing details (List Price, Discount %, Cost Price, Quantity)
- Derived metrics (Discount, Sale Price, Profit)

Goal of the Project
-------------------------------------------------------------------------
- Tracks sales, discount, and profit at different levels (product, subcategory, category, region)
- Provides year-over-year and month-over-month sales comparisons
- Highlights top products, regional performance, and category insights
- Helps in identifying growth opportunities and areas of concern

Walkthrough of Key Analysis
-------------------------------------------------------------------------
- Top 10 Products by Revenue
   - Identifies the products contributing most to sales.

- Top 5 Products in Each Region
   - Highlights region-wise product leaders.

- Month-over-Month Sales Comparison (2022 vs 2023)
   - Tracks growth trends and seasonal performance.

- Best Month for Each Category
   - Finds peak-performing months by product category.

- Subcategory with Highest Profit Growth (2023 vs 2022)
  - Detects product subcategories with the highest improvement in profitability.


Insights
----------------------------------------------------------------------------
Revenue Drivers
  – Top-selling products dominate sales contribution.  
Regional Leaders
  – Certain products are top-performers only in specific regions.
Seasonal Sales Trends 
  – Year-over-year sales comparison reveals demand cycles.
Category Peaks
  – Each category has unique high-performing months.
Profitability Growth
  – Some subcategories show significant profit improvement in 2023.
