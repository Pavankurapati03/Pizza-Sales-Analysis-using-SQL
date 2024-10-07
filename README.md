# 🍕 Pizza Sales Analysis using SQL

## 📑 Project Overview
This project focuses on analyzing pizza sales data to help a pizza franchise make data-driven decisions that can improve their business. The analysis is done using SQL queries of varying complexity—ranging from basic to advanced. The insights derived from this analysis allow the franchise to understand order patterns, identify top-selling pizzas, and optimize sales strategies based on detailed metrics such as revenue and order distribution.

The project was conducted using **MySQL Workbench** and involved the use of four datasets: `orders`, `order_details`, `pizzas`, and `pizza_types`.

## 🗂️ Datasets
- **Orders**: Contains details about each order placed.
- **Order_Details**: Provides information on the specific pizzas ordered and their quantities.
- **Pizzas**: Contains details on the pizza types and sizes.
- **Pizza_Types**: Includes the categories and names of the pizzas.

## Objectives
The key goals of the project are:
1. Provide insights into the franchise's sales performance.
2. Help the franchise understand customer ordering behavior.
3. Optimize decision-making to enhance revenue.

## 🔍 SQL Queries Breakdown
The project is structured into three levels of queries: Basic, Intermediate, and Advanced.

### Basic Level Queries
1. **Total Number of Orders**: Retrieve the total number of orders placed.
2. **Total Revenue**: Calculate the total revenue generated from pizza sales.
3. **Highest-Priced Pizza**: Identify the most expensive pizza on the menu.
4. **Most Common Pizza Size**: Find out which pizza size is most frequently ordered.
5. **Top 5 Most Ordered Pizzas**: List the top 5 pizza types with the highest number of orders.

### Intermediate Level Queries
1. **Total Quantity by Pizza Category**: Join the necessary tables to find the total quantity of each pizza category ordered.
2. **Order Distribution by Hour**: Analyze the distribution of orders by hour of the day.
3. **Category-Wise Pizza Distribution**: Find the distribution of pizzas across different categories.
4. **Average Pizzas Ordered Per Day**: Group orders by date and calculate the average number of pizzas ordered each day.
5. **Top 3 Pizza Types by Revenue**: Determine the top 3 most ordered pizza types based on revenue.

### Advanced Level Queries
1. **Revenue Contribution by Pizza Type**: Calculate the percentage contribution of each pizza type to total revenue.
2. **Cumulative Revenue Analysis**: Analyze how revenue has accumulated over time.
3. **Top 3 Pizza Types by Revenue (Per Category)**: Determine the top 3 most ordered pizza types based on revenue for each pizza category.

## 🛠️ Tools Used
- **MySQL Workbench**: For executing SQL queries and managing the database.
- **SQL**: Structured Query Language to manipulate and query the data.

## 🚀 Results & Insights
- **Most Ordered Pizza Size**: The analysis revealed which pizza size is the most popular.
- **Revenue Insights**: Top-performing pizza types were identified based on both quantity and revenue.
- **Order Distribution**: Understanding when orders are placed most frequently allowed the franchise to optimize staffing and operations.
- **Revenue Contribution**: Insights into which pizza types contribute the most to revenue help the franchise decide on promotional strategies.

## How to Run the Project
1. Import the four datasets (`orders`, `order_details`, `pizzas`, `pizza_types`) into MySQL Workbench.
2. Run the provided SQL queries to retrieve insights.
3. Analyze the output of each query to make data-driven decisions.

## Conclusion
This project provided critical insights into pizza sales that can help the franchise improve its business operations, focus on high-revenue pizza types, and optimize its strategy based on customer ordering behavior.

---

## Project Structure
- **SQL Scripts**: Contains all SQL queries used in this analysis.
- **Datasets**: The datasets used for this analysis (if applicable to share).
- **Results**: Insights and outputs from the queries.
