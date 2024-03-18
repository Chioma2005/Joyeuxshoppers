# Joyeuxshoppers Data Analysis

This README provides a comprehensive overview of the data analysis performed on Joyeux Shoppers' sales data. The analysis aims to deliver insights into various aspects of sales performance, customer demographics, gender distribution, age groups, and the top-performing products, categories, and brands.

## Data Preparation & Loading

A MySQL database named capstone_db was created on AWS RDS for MySQL using the eligible free-tier instance type.

## Tables Creation

Seven tables were created to organize the data obtained from provided CSV files:
- Customers
- Orders
- Products
- Logistics
- Marketing Campaigns
- Events

## ERD

A simple Entity-Relationship Diagram (ERD) was developed to visualize the relationships among the tables.

## Python Scripts

Python scripts were written to efficiently load the data from CSV files into their respective tables within the MySQL database.

## Data Analysis

### Sales Analysis

A thorough sales analysis was conducted to monitor metrics such as total revenue, total sales, total orders, and customer count on a monthly basis.

### Demography Analysis

Customer demographics were analyzed by country and gender to gain insights into the distribution of total customers.

### Gender Analysis

The revenue generated by gender was investigated, including total revenue and total items purchased for each gender category.

### Age Distribution Analysis

The distribution of orders across various age groups was examined to support targeted marketing campaigns.

### Top Selling Products, Brands, Categories

Top-selling products, categories, and brands were identified based on the quantity sold, displaying total sales value and total quantity sold. Ranking functions (rank, row number, dense rank) were utilized to handle ties in total quantity sold.

## Conclusion

This README summarizes the extensive data analysis conducted on Joyeux Shoppers' sales data. The insights gained from this analysis are valuable for strategic decision-making and optimizing business operations. For more detailed information, please refer to the accompanying documentation and SQL queries.
