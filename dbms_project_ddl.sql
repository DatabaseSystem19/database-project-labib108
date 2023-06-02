set pagesize 200;
set linesize 200;

--drop table
drop table Categories;
drop table Suppliers;
drop table Products;
drop table Orders;
drop table Order_Items;


--table creation
CREATE TABLE Categories (
  category_id INT PRIMARY KEY,
  category_name VARCHAR(50)
);
CREATE TABLE Suppliers (
  supplier_id INT PRIMARY KEY,
  supplier_name VARCHAR(50),
  supplier_email VARCHAR(50),
  supplier_phone VARCHAR(20)
);
CREATE TABLE Products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(100),
  supplier_id INT,
  category_id INT,
  price INT,
  quantity INT,
  FOREIGN KEY (category_id) REFERENCES Categories(category_id),
  FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id)
);
CREATE TABLE Orders (
  order_id INT PRIMARY KEY,
  supplier_id INT,
  customer_name VARCHAR(100),
  order_date VARCHAR(100),
  total_amount INT,
  product_id INT,
  FOREIGN KEY (product_id) REFERENCES Products(product_id),
  FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id)
);
CREATE TABLE Order_Items (
  order_item_id INT PRIMARY KEY,
  order_id INT,
  product_id INT,
  quantity INT,
  price DECIMAL(10,2),
  FOREIGN KEY (order_id) REFERENCES Orders(order_id),
  FOREIGN KEY (product_id) REFERENCES Products(product_id)
);


--************** alter command *****************

--add column
alter table Categories add catagory_type VARCHAR(25);
alter table Products add product_code INT;

--modify column
alter table Orders modify customer_name VARCHAR(50);

--drop/delete a column
alter table Products drop column product_code;

--rename a column
alter table Order_Items rename column order_id to order_code;

--drop extra added column
alter table Categories drop column catagory_type;
desc Categories;