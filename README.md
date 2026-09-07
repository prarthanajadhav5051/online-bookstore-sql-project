# 📚 Online Bookstore SQL Data Analysis

## 📌 Project Overview

This project is an end-to-end SQL data analysis project based on an Online Bookstore dataset. The project uses PostgreSQL to store, manage, and analyze data related to books, customers, and orders.

The objective is to use SQL to answer business-related questions and generate meaningful insights about book sales, customers, revenue, inventory, and purchasing patterns.

---

## 🎯 Project Objectives

- Analyze book sales and customer purchasing behavior
- Identify the most popular and frequently ordered books
- Analyze revenue generated from orders
- Understand sales performance by genre and author
- Identify high-value customers
- Analyze book inventory and remaining stock
- Practice SQL joins, aggregations, filtering, grouping, and subqueries

---

## 🛠️ Tools & Technologies

- **Database:** PostgreSQL
- **SQL Tool:** pgAdmin 4
- **Language:** SQL
- **Dataset Format:** CSV
- **Version Control:** GitHub

---

## 🗄️ Database Structure

The project contains three main tables:

### 1. Books

Contains information about books available in the bookstore.

| Column | Description |
|---|---|
| Book_ID | Unique identifier for each book |
| Title | Name of the book |
| Author | Author of the book |
| Genre | Genre/category of the book |
| Published_Year | Year the book was published |
| Price | Price of the book |
| Stock | Available stock |

### 2. Customers

Contains information about bookstore customers.

| Column | Description |
|---|---|
| Customers_ID | Unique customer identifier |
| Name | Customer name |
| Email | Customer email |
| Phone | Customer phone number |
| City | Customer city |
| Country | Customer country |

### 3. Orders

Contains information about customer orders.

| Column | Description |
|---|---|
| Order_ID | Unique order identifier |
| Customers_ID | Customer who placed the order |
| Book_ID | Book purchased |
| Order_Date | Date of the order |
| Quantity | Number of books purchased |
| Total_Amount | Total value of the order |

---

## 🔗 Relationships

The tables are connected using primary and foreign keys.

```text
Customers
    │
    │ Customers_ID
    ▼
Orders
    │
    │ Book_ID
    ▼
Books
