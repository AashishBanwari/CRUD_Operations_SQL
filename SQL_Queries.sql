-- Users 
INSERT INTO Users (user_id, username, email, created_at)
 VALUES 
(1, 'john_doe', 'john@example.com', '2024-05-01')
, (2, 'jane_smith', 'jane@example.com', '2024-05-02'); 
-- Products
INSERT INTO Products (product_id, name, description, price, stock_quantity) 
VALUES 
(1, 'Laptop', 'High-performance laptop with SSD', 1000, 10)
, (2, 'Smartphone', 'Latest smartphone model', 800, 15)
, (3, 'Headphones', 'Noise-canceling headphones', 200, 20);
-- Orders 
INSERT INTO Orders (order_id, user_id, order_date, total_amount) 
VALUES 
(1, 1, '2024-05-03', 1000)
, (2, 2, '2024-05-04', 1200); 
 
-- OrderDetails 
INSERT INTO OrderDetails (order_id, product_id, quantity, price) 
VALUES 
(1, 1, 1, 1000)
, (2, 1, 1, 1000)
, (2, 3, 1, 200); 
