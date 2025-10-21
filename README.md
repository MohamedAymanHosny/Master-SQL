| Module         | Description                                               |
| -------------- | --------------------------------------------------------- |
| **Sales**      | Handles customers, staff, stores, orders, and order items |
| **Production** | Handles products, brands, categories, and stock           |

| Table           | Role                        | Key Relationships                                  |
| --------------- | --------------------------- | -------------------------------------------------- |
| **Customers**   | Contains customer info      | Linked to `Orders` (1 customer → many orders)      |
| **Staffs**      | Employees working in stores | Linked to `Stores` (each staff works at one store) |
| **Stores**      | Physical shop locations     | Linked to `Orders`, `Staffs`, `Stocks`             |
| **Orders**      | Customer orders             | References `Customers`, `Stores`, and `Staffs`     |
| **Order_Items** | Items inside each order     | Links each order to its products                   |

| Relationship         | Description                             |
| -------------------- | --------------------------------------- |
| Store ↔ Staff        | One store → many staff                  |
| Store ↔ Orders       | One store → many orders                 |
| Staff ↔ Orders       | One staff → many orders                 |
| Customer ↔ Orders    | One customer → many orders              |
| Order ↔ OrderItems   | One order → many items                  |
| Product ↔ OrderItems | One product → many order items          |
| Product ↔ Stocks     | A product exists in many stores (stock) |
| Store ↔ Stocks       | A store has many products in stock      |

![Database Diagram](https://edrawcloudpublicus.s3.amazonaws.com/viewer/self/9057521/share/2025-10-21/1761075269/main.svg)
