-- Inserting data into the Categories table
INSERT INTO Categories (category_id, category_name) VALUES (1, 'Electronics');
INSERT INTO Categories (category_id, category_name) VALUES (2, 'Clothing');
INSERT INTO Categories (category_id, category_name) VALUES (3, 'Home Appliances');
INSERT INTO Categories (category_id, category_name) VALUES (4, 'Books');
INSERT INTO Categories (category_id, category_name) VALUES (5, 'Beauty');
INSERT INTO Categories (category_id, category_name) VALUES (6, 'Sports');
INSERT INTO Categories (category_id, category_name) VALUES (7, 'Toys');
INSERT INTO Categories (category_id, category_name) VALUES (8, 'Furniture');
INSERT INTO Categories (category_id, category_name) VALUES (9, 'Jewelry');
INSERT INTO Categories (category_id, category_name) VALUES (10, 'Automotive');



-- Insert data into Suppliers table
INSERT INTO Suppliers (supplier_id, supplier_name, supplier_email, supplier_phone) VALUES (1, 'ABC Electronics', 'abc@electronics.com', '1234567890');
INSERT INTO Suppliers (supplier_id, supplier_name, supplier_email, supplier_phone) VALUES (2, 'XYZ Clothing', 'xyz@clothing.com', '9876543210');
INSERT INTO Suppliers (supplier_id, supplier_name, supplier_email, supplier_phone) VALUES (3, 'Home Appliances Inc.', 'info@homeappliances.com', '5555555555');
INSERT INTO Suppliers (supplier_id, supplier_name, supplier_email, supplier_phone) VALUES (4, 'Bookworms Publishers', 'sales@bookworms.com', '4444444444');
INSERT INTO Suppliers (supplier_id, supplier_name, supplier_email, supplier_phone) VALUES (5, 'Beauty Supplies Co.', 'info@beautysupplies.com', '7777777777');
INSERT INTO Suppliers (supplier_id, supplier_name, supplier_email, supplier_phone) VALUES (6, 'Sports Gear Ltd.', 'sales@sportsgear.com', '6666666666');
INSERT INTO Suppliers (supplier_id, supplier_name, supplier_email, supplier_phone) VALUES (7, 'Toy World', 'info@toyworld.com', '8888888888');
INSERT INTO Suppliers (supplier_id, supplier_name, supplier_email, supplier_phone) VALUES (8, 'Furniture Emporium', 'sales@furnitureemporium.com', '9999999999');
INSERT INTO Suppliers (supplier_id, supplier_name, supplier_email, supplier_phone) VALUES (9, 'Jewelry Gems', 'info@jewelrygems.com', '2222222222');
INSERT INTO Suppliers (supplier_id, supplier_name, supplier_email, supplier_phone) VALUES (10, 'Auto Parts Ltd.', 'sales@autoparts.com', '1111111111');

-- Insert data into Products table
INSERT INTO Products (product_id, product_name,supplier_id, category_id, price, quantity) VALUES (1, 'Laptop', 1, 1, 1500, 10);
INSERT INTO Products (product_id, product_name,supplier_id, category_id, price, quantity) VALUES (2, 'T-Shirt', 2, 2, 20, 50);
INSERT INTO Products (product_id, product_name,supplier_id, category_id, price, quantity) VALUES (3, 'Refrigerator',3, 3, 800, 5);
INSERT INTO Products (product_id, product_name,supplier_id, category_id, price, quantity) VALUES (4, 'Novel', 4,4, 15, 20);
INSERT INTO Products (product_id, product_name,supplier_id, category_id, price, quantity) VALUES (5, 'Lipstick',5, 5, 10, 30);
INSERT INTO Products (product_id, product_name,supplier_id, category_id, price, quantity) VALUES (6, 'Basketball',6, 6, 25, 15);
INSERT INTO Products (product_id, product_name,supplier_id, category_id, price, quantity) VALUES (7, 'Action Figure',7, 7, 8, 40);
INSERT INTO Products (product_id, product_name,supplier_id, category_id, price, quantity) VALUES (8, 'Sofa',8, 8, 500, 3);
INSERT INTO Products (product_id, product_name,supplier_id, category_id, price, quantity) VALUES (9, 'Necklace',9, 9, 100, 12);
INSERT INTO Products (product_id, product_name,supplier_id, category_id, price, quantity) VALUES (10, 'Car Battery',10, 10, 80, 8);

-- Insert data into Orders table
INSERT INTO Orders (order_id, supplier_id, customer_name, order_date, total_amount, product_id) VALUES (1, 1, 'John Smith', '2023-05-01', 500, 1);
INSERT INTO Orders (order_id, supplier_id, customer_name, order_date, total_amount, product_id) VALUES (2, 2, 'Jane Doe', '2023-05-02', 100, 2);
INSERT INTO Orders (order_id, supplier_id, customer_name, order_date, total_amount, product_id) VALUES (3, 3, 'Michael Johnson', '2023-05-03', 1600, 3);
INSERT INTO Orders (order_id, supplier_id, customer_name, order_date, total_amount, product_id) VALUES (4, 4, 'Emily Wilson', '2023-05-04', 300, 4);
INSERT INTO Orders (order_id, supplier_id, customer_name, order_date, total_amount, product_id) VALUES (5, 5, 'David Thompson', '2023-05-05', 150, 5);
INSERT INTO Orders (order_id, supplier_id, customer_name, order_date, total_amount, product_id) VALUES (6, 6, 'Sarah Brown', '2023-05-06', 200, 6);
INSERT INTO Orders (order_id, supplier_id, customer_name, order_date, total_amount, product_id) VALUES (7, 7, 'Robert Lee', '2023-05-07', 40, 7);
INSERT INTO Orders (order_id, supplier_id, customer_name, order_date, total_amount, product_id) VALUES (8, 8, 'Olivia Davis', '2023-05-08', 1500, 8);
INSERT INTO Orders (order_id, supplier_id, customer_name, order_date, total_amount, product_id) VALUES (9, 9, 'James Miller', '2023-05-09', 1200, 9);
INSERT INTO Orders (order_id, supplier_id, customer_name, order_date, total_amount, product_id) VALUES (10, 10, 'Sophia Wilson', '2023-05-10', 640, 10);

-- Insert data into Order_Items table
INSERT INTO Order_Items (order_item_id, order_id, product_id, quantity, price) VALUES (1, 1, 1, 2, 1500);
INSERT INTO Order_Items (order_item_id, order_id, product_id, quantity, price) VALUES (2, 2, 2, 5, 20);
INSERT INTO Order_Items (order_item_id, order_id, product_id, quantity, price) VALUES (3, 3, 3, 1, 800);
INSERT INTO Order_Items (order_item_id, order_id, product_id, quantity, price) VALUES (4, 4, 4, 3, 15);
INSERT INTO Order_Items (order_item_id, order_id, product_id, quantity, price) VALUES (5, 5, 5, 2, 10);
INSERT INTO Order_Items (order_item_id, order_id, product_id, quantity, price) VALUES (6, 6, 6, 1, 25);
INSERT INTO Order_Items (order_item_id, order_id, product_id, quantity, price) VALUES (7, 7, 7, 4, 8);
INSERT INTO Order_Items (order_item_id, order_id, product_id, quantity, price) VALUES (8, 8, 8, 1, 500);
INSERT INTO Order_Items (order_item_id, order_id, product_id, quantity, price) VALUES (9, 9, 9, 2, 100);
INSERT INTO Order_Items (order_item_id, order_id, product_id, quantity, price) VALUES (10, 10, 10, 1, 80);


--Show all records
select * from Categories;
select * from Suppliers;
select * from Products;
select * from Orders;
select * from Order_Items;

--Show all records row
select count(*) from Categories;
select count(*) from Suppliers;
select count(*) from Products;
select count(*) from Orders;
select count(*) from Order_Items;

--Nested Sub Query
select customer_name from Orders where order_id = (
    select order_id from Order_Items where order_item_id = 4);

--natural join operation
select * from Orders natural join Order_Items;
--left join operation
SELECT * FROM Categories LEFT OUTER JOIN Products ON Categories.category_id = Products.category_id;
--right join operation
SELECT * FROM Categories RIGHT OUTER JOIN Products ON Categories.category_id = Products.category_id;
--nested join operation
SELECT Orders.order_id, Orders.customer_name, Products.product_name, Order_Items.quantity, Order_Items.price FROM Orders
    JOIN Order_Items ON Orders.order_id = Order_Items.order_id
        JOIN Products ON Order_Items.product_id = Products.product_id;

--range search
SELECT * FROM Products WHERE price BETWEEN 100 AND 500;
SELECT * FROM Orders WHERE order_date BETWEEN '2023-05-05' AND '2023-05-08';


--string operations
SELECT * FROM Suppliers WHERE supplier_name LIKE 'A%';
SELECT * FROM Orders WHERE order_id LIKE '%5%';

-------order by operation
SELECT * FROM Products ORDER BY price ASC;
SELECT * FROM Suppliers ORDER BY LOWER(supplier_name) ASC;

--aggregate functions
SELECT SUM(quantity) AS total_quantity FROM Products;
SELECT AVG(price) AS average_price FROM Products WHERE category_id = 1;
SELECT MAX(price) AS max_price FROM Products;

--group by clause
SELECT category_id, SUM(quantity) AS total_quantity FROM Products GROUP BY category_id;
SELECT supplier_id, AVG(price) AS average_price FROM Products GROUP BY supplier_id;
SELECT category_id, COUNT(*) AS product_count FROM Products GROUP BY category_id;

--having clause
SELECT category_id, SUM(quantity) AS total_quantity FROM Products GROUP BY category_id HAVING SUM(quantity) > 10;
SELECT supplier_id, AVG(price) AS average_price FROM Products GROUP BY supplier_id HAVING AVG(price) > 50;
SELECT category_id, COUNT(*) AS product_count FROM Products GROUP BY category_id HAVING COUNT(*) < 1;

--NULL values
SELECT * FROM Orders WHERE customer_name IS NULL;

--union all operation
SELECT city FROM Customers UNION ALL SELECT city FROM Suppliers;
SELECT product_name FROM Products UNION ALL SELECT p.product_name FROM Order_Items oi JOIN Products p ON oi.product_id = p.product_id;

--intersection operation
