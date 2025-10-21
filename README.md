# 🏪 Store Management & Sales Database

![Database Diagram](https://edrawcloudpublicus.s3.amazonaws.com/viewer/self/9057521/share/2025-10-21/1761075269/main.svg)

## 📌 Overview

This project is a complete **Store Management and Sales System** designed using **SQL Server**. It simulates a real retail environment including products, categories, brands, stores, staff, customers, and order management.

The goal of this project is to demonstrate a well-structured relational database using proper normalization, foreign keys, and entity relationships.

## 🧱 Database Modules

| Module                | Description                                               |
| --------------------- | --------------------------------------------------------- |
| **Sales Module**      | Handles orders, customers, staff, stores, and order items |
| **Production Module** | Handles products, brands, categories, and stock levels    |

## 🔗 Main Relationships

| Relationship                                           | Explanation |
| ------------------------------------------------------ | ----------- |
| One **Customer** → Many **Orders**                     |             |
| One **Order** → Many **Order Items**                   |             |
| One **Store** → Many **Staff**                         |             |
| One **Store** → Many **Orders**                        |             |
| One **Product** → Many **Order Items**                 |             |
| One **Category** → Many **Products**                   |             |
| One **Brand** → Many **Products**                      |             |
| One **Store** + One **Product** → One **Stock Record** |             |

## ⚙️ Technologies Used

* Microsoft SQL Server
* T-SQL
* SSMS (SQL Server Management Studio)

## 🚀 How to Run the Project

1. Clone or download this repository
2. Open SQL Server Management Studio
3. Create a new database
4. Copy & paste the `.sql` script into a new query window
5. Execute the script
6. Open **Database Diagrams** to view table relationships

## 📂 Folder Structure

```
📁 SQL-Store-Database
 ├── schema.sql       # Database creation script
 ├── inserts.sql      # Sample data (if available)
 └── README.md        # Project documentation
```

## 📌 Features

* ✅ Fully normalized relational schema
* ✅ Real-world store & sales workflow
* ✅ Uses proper foreign key constraints
* ✅ Supports multiple stores and inventory tracking
* ✅ Ensures referential integrity across modules
* ✅ Easy to extend (can add payments, suppliers, etc.)

## 🛠️ Example SQL Queries

```sql
-- View all products with category and brand
SELECT p.product_name, c.category_name, b.brand_name
FROM products p
JOIN categories c ON p.category_id = c.category_id
JOIN brands b ON p.brand_id = b.brand_id;

-- Customer recent orders
SELECT o.order_id, o.order_date, c.first_name, c.last_name
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;
```

## 📥 Download ERD

You can view or download the ERD from this link:
[Download Diagram](https://edrawcloudpublicus.s3.amazonaws.com/viewer/self/9057521/share/2025-10-21/1761075269/main.svg)

## 👤 Author

**Mohamed Ayman**
📌 SQL & Software Engineering Student
🌍 Egypt

GitHub Profile: [https://github.com/MohamedAymanHosny](https://github.com/MohamedAymanHosny)

---

