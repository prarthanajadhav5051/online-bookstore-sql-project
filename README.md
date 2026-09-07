# 📚 Online Bookstore SQL Data Analysis

## 📌 Project Overview

This project is an end-to-end **SQL Data Analysis project** based on an Online Bookstore dataset.

The project uses **PostgreSQL** to store, manage, and analyze data related to books, customers, and orders.

The main objective is to use SQL queries to answer real-world business questions related to:

- Book sales
- Customer purchasing behavior
- Revenue
- Popular books
- Genres and authors
- Pricing
- Inventory
- Customer spending

This project demonstrates practical SQL skills including filtering, aggregation, joins, grouping, sorting, and business-oriented data analysis.

---

## 🎯 Project Objectives

The main objectives of this project are:

- Analyze online bookstore sales data
- Understand customer purchasing patterns
- Calculate total revenue generated from orders
- Identify popular and frequently ordered books
- Analyze book sales by genre and author
- Identify high-value customers
- Analyze book pricing
- Calculate available and remaining inventory
- Practice SQL queries using a relational database
- Extract meaningful business insights from raw data

---

## 🛠️ Tools & Technologies

| Tool / Technology | Purpose |
|---|---|
| PostgreSQL | Database management and SQL analysis |
| pgAdmin 4 | SQL development and database management |
| SQL | Data querying and analysis |
| CSV | Dataset storage |
| GitHub | Project documentation and version control |

---

## 🗄️ Database Structure

The project contains three main relational tables:

### 📚 1. Books

The `Books` table contains information about books available in the bookstore.

| Column | Description |
|---|---|
| Book_ID | Unique identifier for each book |
| Title | Title of the book |
| Author | Author of the book |
| Genre | Genre/category of the book |
| Published_Year | Year in which the book was published |
| Price | Price of the book |
| Stock | Number of books available in stock |

---

### 👤 2. Customers

The `Customers` table contains information about bookstore customers.

| Column | Description |
|---|---|
| Customers_ID | Unique identifier for each customer |
| Name | Customer name |
| Email | Customer email address |
| Phone | Customer phone number |
| City | Customer city |
| Country | Customer country |

---

### 🛒 3. Orders

The `Orders` table contains information about customer purchases.

| Column | Description |
|---|---|
| Order_ID | Unique identifier for each order |
| Customers_ID | Customer who placed the order |
| Book_ID | Book purchased |
| Order_Date | Date on which the order was placed |
| Quantity | Number of books purchased |
| Total_Amount | Total value of the order |

---

## 🔗 Database Relationships

The tables are connected using primary keys and foreign keys.

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
