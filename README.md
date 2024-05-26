## CRUD Operations:

(**Create**, **Read**, **Update**, **Delete**) are fundamental to SQL database management. These operations enable the creation, retrieval, modification, and deletion of data within database tables. By leveraging SQL commands such as **INSERT**, **SELECT**, **UPDATE**, and **DELETE**, users can efficiently manage data, ensuring database integrity and functionality.

## Schema Information:
This schema has the following tables:
1.	**Users:** Contains information about users registered on the platform.

    - Columns: user_id (Primary Key), username, email, created_at
2.	**Products:** Stores details of products available for purchase.

    - Columns: product_id (Primary Key), name, description, price, stock_quantity
3.	**Orders:** Records information about orders placed by users.

    - Columns: order_id (Primary Key), user_id (Foreign Key), order_date, total_amount
4.	**OrderDetails:** Stores details of products included in each order.

    - Columns: order_id (Composite Foreign Key), product_id (Composite Foreign Key), quantity, price


## Basic to Advanced CRUD Operations:

### Create
This SQL statement adds a new record to the Users table. It inserts data into the specified columns with the provided values. 
```sql
-- Add a new user 
INSERT INTO Users (username, email, created_at) 
VALUES ('new_user', 'new@example.com', '2024-05-05'); 
```

### Read
These SQL queries retrieve data from the database:
  - The first query selects all columns (*) from the Products table, fetching information about all available products.
  - The second query retrieves all columns from the Orders table, showing orders placed by a specific user.
  - The third query selects all columns from the OrderDetails table, displaying details of products included in a specific order.

```sql
-- Retrieve all products 
SELECT * FROM Products;

-- Retrieve orders placed by a specific user 
SELECT * FROM Orders 
WHERE user_id = 1;

-- Retrieve order details for a specific order 
SELECT * FROM OrderDetails 
WHERE order_id = 2; 
```

###  Update
These SQL statements modify existing data in the database:
  - The first statement updates the price column of the Products table.
  - The second statement changes the value of the email column in the Users table.
```sql
-- Update product price 
UPDATE Products SET price = 900 
WHERE product_id = 2;

-- Update user email 
UPDATE Users 
SET email = 'updated_email@example.com' 
WHERE user_id = 2; 
```

### Delete
These SQL statements delete data from the database:
  - The first statement removes a record from the Products table, effectively deleting a product from the database.
  - The second and third statements delete records from the Orders and OrderDetails tables, removing an entire order and its associated details from the database.
```sql
-- Remove a product from the database 
DELETE FROM Products 
WHERE product_id = 3; 

-- Remove an order and its associated details 
DELETE FROM Orders 
WHERE order_id = 1; 

DELETE FROM OrderDetails 
WHERE order_id = 1;
```
