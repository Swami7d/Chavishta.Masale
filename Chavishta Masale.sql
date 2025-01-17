CREATE DATABASE Production;

USE Production;

CREATE TABLE Products(
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255) NOT NULL,
    Category VARCHAR(100),
    Price DECIMAL(10, 2) NOT NULL,
    StockQuantity INT NOT NULL
);

INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity) 
VALUES (1, 'Chilli Powder', 'Spices', 25.00, 10);
INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity) 
VALUES (2, 'Turmeric Powder', 'Spices', 35.00, 10);
INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity) 
VALUES (3, 'Chai Powder', 'Spices', 55.00, 30);
INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity) 
VALUES (4, 'Pav Bhaji Masala', 'Spices', 45.00, 100);
INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity) 
VALUES (5, 'Khichadi Masala', 'Spices', 15.00, 200);
INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity) 
VALUES (6, 'cardamom Powder', 'Spices', 100.00, 200);
INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity) 
VALUES (7, 'Cinnamon', 'Spices', 200.00, 200);
INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity) 
VALUES (8, 'Fenugreek Powder', 'Spices', 75.00, 300);
INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity) 
VALUES (9, 'Garam Masala', 'Spices', 25.00, 400);
INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity) 
VALUES (0, 'Chatpata Masala', 'Spices', 30.00, 500);
INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity) 
VALUES (11, 'Mutton Masala', 'Spices', 40.00, 500);
INSERT INTO Products (ProductID, ProductName, Category, Price, StockQuantity) 
VALUES (12, 'Chicken Masala', 'Spices', 20.00, 600);

CREATE TABLE Customerinfo (
Cust_ID Int Primary Key,
Cust_Name varchar(80),
Cust_address varchar(255),
Cust_Pincode int Not Null
);

INSERT INTO Customerinfo (Cust_ID, Cust_Name, Cust_address, Cust_pincode)
VALUES (101, 'Shree Masale', 'pune', 123);
INSERT INTO Customerinfo (Cust_ID, Cust_Name, Cust_address, Cust_pincode)
VALUES (102, 'Atharv Masale', 'Kurla', 125);
INSERT INTO Customerinfo (Cust_ID, Cust_Name, Cust_address, Cust_pincode)
VALUES (103, 'Danny Ansari', 'Mumbai', 444);
INSERT INTO Customerinfo (Cust_ID, Cust_Name, Cust_address, Cust_pincode)
VALUES (104, 'Akbar', 'Aurangabad', 555);
INSERT INTO Customerinfo (Cust_ID, Cust_Name, Cust_address, Cust_pincode)
VALUES (105, 'Pintu Masale', 'Manjribudruk', 662);


CREATE TABLE NewOrders (
    order_id INT PRIMARY KEY,
    ProductName VARCHAR(255),
    Cust_ID INT,
    order_date DATE,
    shipping_address VARCHAR(255),
    Units_Sold INT,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (Cust_ID) REFERENCES Customerinfo(Cust_ID)
);


INSERT INTO NewOrders (order_id, ProductName, Cust_ID, Order_date, Shipping_address, Units_Sold, total_amount)
VALUES
(1, 'Chilli Powder', 101, '2024-06-01', '123 Spice St, Mumbai, MH', 2, 200.00),
(2, 'Turmeric Powder', 102, '2024-06-01', '456 Curry Rd, Delhi, DL', 1, 150.00),
(3, 'Chai Powder', 103, '2024-06-02', '789 Masala Ave, Kolkata, WB', 3, 300.00),
(4, 'Pav Bhaji Masala', 104, '2024-06-02', '101 Spice Blvd, Bangalore, KA', 1, 250.00),
(5, 'Khichadi Masala', 105, '2024-06-03', '102 Curry Ln, Chennai, TN', 4, 400.00),
(6, 'Cardamom Powder', 101, '2024-06-03', '103 Masala Ct, Hyderabad, TS', 1, 500.00),
(7, 'Cinnamon', 102, '2024-06-04', '104 Spice Pl, Pune, MH', 2, 600.00),
(8, 'Fenugreek Powder', 103, '2024-06-04', '105 Curry St, Ahmedabad, GJ', 1, 120.00),
(9, 'Garam Masala', 104, '2024-06-05', '106 Masala Dr, Jaipur, RJ', 3, 300.00),
(10, 'Chatpata Masala', 105, '2024-06-05', '107 Spice Rd, Lucknow, UP', 2, 200.00),
(11, 'Mutton Masala', 101, '2024-06-06', '108 Curry Blvd, Patna, BR', 1, 350.00),
(12, 'Chicken Masala', 102, '2024-06-06', '109 Masala Ave, Bhopal, MP', 2, 250.00),
(13, 'Chilli Powder', 103, '2024-06-07', '110 Spice Ln, Kochi, KL', 1, 100.00),
(14, 'Turmeric Powder', 104, '2024-06-07', '111 Curry Ct, Thiruvananthapuram, KL', 2, 200.00),
(15, 'Chai Powder', 105, '2024-06-08', '112 Masala Pl, Goa, GA', 3, 300.00),
(16, 'Pav Bhaji Masala', 101, '2024-06-08', '113 Spice St, Srinagar, JK', 4, 500.00),
(17, 'Khichadi Masala', 102, '2024-06-09', '114 Curry Rd, Shimla, HP', 2, 200.00),
(18, 'Cardamom Powder', 103, '2024-06-09', '115 Masala Blvd, Dehradun, UK', 1, 150.00),
(19, 'Cinnamon', 104, '2024-06-10', '116 Spice Pl, Chandigarh, CH', 3, 450.00),
(20, 'Fenugreek Powder', 105, '2024-06-10', '117 Curry St, Gandhinagar, GJ', 2, 240.00),
(21, 'Garam Masala', 101, '2024-06-11', '118 Masala Dr, Panaji, GA', 1, 100.00),
(22, 'Chatpata Masala', 102, '2024-06-11', '119 Spice Rd, Ranchi, JH', 4, 400.00),
(23, 'Mutton Masala', 103, '2024-06-12', '120 Curry Blvd, Raipur, CG', 2, 700.00),
(24, 'Chicken Masala', 104, '2024-06-12', '121 Masala Ave, Guwahati, AS', 1, 125.00),
(25, 'Chilli Powder', 105, '2024-06-13', '122 Spice Ln, Imphal, MN', 3, 150.00),
(26, 'Turmeric Powder', 101, '2024-06-13', '123 Curry Ct, Agartala, TR', 2, 200.00),
(27, 'Chai Powder', 102, '2024-06-14', '124 Masala Pl, Aizawl, MZ', 1, 100.00),
(28, 'Pav Bhaji Masala', 103, '2024-06-14', '125 Spice St, Shillong, ML', 2, 250.00),
(29, 'Khichadi Masala', 104, '2024-06-15', '126 Curry Rd, Kohima, NL', 3, 300.00),
(30, 'Cardamom Powder', 105, '2024-06-15', '127 Masala Blvd, Itanagar, AR', 4, 600.00),
(31, 'Cinnamon', 101, '2024-06-16', '128 Spice Ln, Silvassa, DN', 1, 200.00),
(32, 'Fenugreek Powder', 102, '2024-06-16', '129 Curry St, Daman, DD', 2, 240.00),
(33, 'Garam Masala', 103, '2024-06-17', '130 Masala Dr, Kavaratti, LD', 1, 300.00),
(34, 'Chatpata Masala', 104, '2024-06-17', '131 Spice Rd, Port Blair, AN', 3, 600.00),
(35, 'Mutton Masala', 105, '2024-06-18', '132 Curry Blvd, Dispur, AS', 2, 700.00),
(36, 'Chicken Masala', 101, '2024-06-18', '133 Masala Ave, Gangtok, SK', 1, 150.00),
(37, 'Chilli Powder', 102, '2024-06-19', '134 Spice Ln, Puducherry, PY', 2, 200.00),
(38, 'Turmeric Powder', 103, '2024-06-19', '135 Curry Ct, Chennai, TN', 3, 150.00),
(39, 'Chai Powder', 104, '2024-06-20', '136 Masala Pl, Mumbai, MH', 1, 100.00),
(40, 'Pav Bhaji Masala', 105, '2024-06-20', '137 Spice St, Delhi, DL', 2, 500.00),
(41, 'Khichadi Masala', 101, '2024-06-21', '138 Curry Rd, Kolkata, WB', 3, 300.00),
(42, 'Cardamom Powder', 102, '2024-06-21', '139 Masala Blvd, Bangalore, KA', 4, 600.00),
(43, 'Cinnamon', 103, '2024-06-22', '140 Spice Ln, Hyderabad, TS', 2, 400.00),
(44, 'Fenugreek Powder', 104, '2024-06-22', '141 Curry St, Pune, MH', 1, 120.00),
(45, 'Garam Masala', 105, '2024-06-23', '142 Masala Dr, Ahmedabad, GJ', 3, 300.00),
(46, 'Chatpata Masala', 101, '2024-06-23', '143 Spice Rd, Jaipur, RJ', 2, 200.00),
(47, 'Mutton Masala', 102, '2024-06-24', '144 Curry Blvd, Lucknow, UP', 1, 350.00),
(48, 'Chicken Masala', 103, '2024-06-24', '145 Masala Ave, Patna, BR', 2, 250.00),
(49, 'Chilli Powder', 104, '2024-06-25', '146 Spice Ln, Bhopal, MP', 3, 150.00),
(50, 'Turmeric Powder', 105, '2024-06-25', '147 Curry Ct, Kochi, KL', 1, 100.00),
(51, 'Chai Powder', 101, '2024-07-01', '148 Masala Pl, Thiruvananthapuram, KL', 2, 300.00),
(52, 'Pav Bhaji Masala', 102, '2024-07-02', '149 Spice St, Goa, GA', 4, 500.00),
(53, 'Khichadi Masala', 103, '2024-07-03', '150 Curry Rd, Srinagar, JK', 3, 450.00),
(54, 'Cardamom Powder', 104, '2024-07-04', '151 Masala Blvd, Shimla, HP', 2, 240.00),
(55, 'Cinnamon', 105, '2024-07-05', '152 Spice Pl, Dehradun, UK', 1, 100.00),
(56, 'Fenugreek Powder', 101, '2024-07-06', '153 Curry St, Chandigarh, CH', 2, 200.00),
(57, 'Garam Masala', 102, '2024-07-07', '154 Masala Dr, Gandhinagar, GJ', 1, 300.00),
(58, 'Chatpata Masala', 103, '2024-07-08', '155 Spice Rd, Panaji, GA', 3, 600.00),
(59, 'Mutton Masala', 104, '2024-07-09', '156 Curry Blvd, Ranchi, JH', 2, 700.00),
(60, 'Chicken Masala', 105, '2024-07-10', '157 Masala Ave, Raipur, CG', 1, 150.00),
(61, 'Chilli Powder', 101, '2024-07-11', '158 Spice Ln, Guwahati, AS', 3, 150.00),
(62, 'Turmeric Powder', 102, '2024-07-12', '159 Curry Ct, Imphal, MN', 1, 100.00),
(63, 'Chai Powder', 103, '2024-07-13', '160 Masala Pl, Agartala, TR', 2, 200.00),
(64, 'Pav Bhaji Masala', 104, '2024-07-14', '161 Spice St, Aizawl, MZ', 4, 500.00),
(65, 'Khichadi Masala', 105, '2024-07-15', '162 Curry Rd, Shillong, ML', 3, 450.00),
(66, 'Cardamom Powder', 101, '2024-07-16', '163 Masala Blvd, Kohima, NL', 2, 300.00),
(67, 'Cinnamon', 102, '2024-07-17', '164 Spice Pl, Itanagar, AR', 1, 200.00),
(68, 'Fenugreek Powder', 103, '2024-07-18', '165 Curry St, Silvassa, DN', 2, 240.00),
(69, 'Garam Masala', 104, '2024-07-19', '166 Masala Dr, Daman, DD', 3, 300.00),
(70, 'Chatpata Masala', 105, '2024-07-20', '167 Spice Rd, Kavaratti, LD', 1, 200.00),
(71, 'Mutton Masala', 101, '2024-07-21', '168 Curry Blvd, Port Blair, AN', 4, 800.00),
(72, 'Chicken Masala', 102, '2024-07-22', '169 Masala Ave, Dispur, AS', 3, 450.00),
(73, 'Chilli Powder', 103, '2024-07-23', '170 Spice Ln, Gangtok, SK', 2, 300.00),
(74, 'Turmeric Powder', 104, '2024-07-24', '171 Curry Ct, Puducherry, PY', 1, 100.00),
(75, 'Chai Powder', 105, '2024-07-25', '172 Masala Pl, Chennai, TN', 4, 400.00);



CREATE TABLE Returns (
Return_id INT PRIMARY KEY,
order_id INT,
 ProductID INT,
return_date DATE,
reason VARCHAR(255),
status VARCHAR(255),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (order_id) REFERENCES NewOrders(order_id)
);


INSERT INTO returns (Return_id, order_id, ProductID, return_date, reason, status) VALUES
 (1, 1, 1, '2024-06-01', 'Damaged product', 'Processed'),
 (2, 2, 4, '2024-06-05', 'Wrong item', 'Pending'),
 (3, 3, 7, '2024-06-10', 'Changed mind', 'Approved'),
 (4, 4, 1, '2024-06-15', 'Defective item', 'Rejected'),
 (5, 5, 1, '2024-06-20', 'Late delivery', 'Processed'),
 (6, 6, 4, '2024-06-25', 'Not as described', 'Pending'),
 (7, 7, 4, '2024-06-30', 'Better price elsewhere', 'Approved'),
 (8, 8, 5, '2024-07-02', 'Ordered by mistake', 'Rejected'),
 (9, 9, 6, '2024-07-05', 'No longer needed', 'Processed'),
 (10, 10, 1, '2024-07-10', 'Product expired', 'Pending'),
 (11, 11, 6, '2024-07-15', 'Product recall', 'Approved'),
 (12, 12, 7, '2024-07-20', 'Poor quality', 'Rejected'),
 (13, 13, 1, '2024-07-25', 'Found another supplier', 'Processed'),
 (14, 14, 1, '2024-07-30', 'Delivery error', 'Pending'),
 (15, 15, 7, '2024-08-01', 'Changed shipping address', 'Approved'),
 (16, 16, 1, '2024-08-05', 'Received extra item', 'Rejected'),
 (17, 17, 7, '2024-08-10', 'Product malfunction', 'Processed'),
 (18, 18, 1, '2024-08-15', 'Received wrong quantity', 'Pending'),
 (19, 19, 1, '2024-08-20', 'Duplicate order', 'Approved'),
 (20, 20, 4, '2024-08-25', 'Customer dissatisfaction', 'Rejected');




CREATE TABLE Inventory (
inventory_id INT PRIMARY KEY,
ProductID INT,
quantity INT,
warehouse_location VARCHAR(255),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);


INSERT INTO inventory (inventory_id, ProductID, quantity, warehouse_location) VALUES
(1, 1, 50, 'Mumbai'),
(2, 4, 30, 'Delhi'),
(3, 5, 20, 'Bangalore'),
(4, 7, 15, 'Chennai'),
(5, 6, 40, 'Hyderabad'),
(6, 1, 25, 'Kolkata'),
(7, 4, 10, 'Pune'),
(8, 5, 35, 'Ahmedabad'),
(9, 7, 45, 'Jaipur'),
(10, 6, 15, 'Surat'),
(11, 1, 30, 'Lucknow'),
(12, 4, 20, 'Kanpur'),
(13, 5, 10, 'Nagpur'),
(14, 7, 5, 'Indore'),
(15, 6, 50, 'Thane'),
(16, 1, 15, 'Bhopal'),
(17, 4, 25, 'Visakhapatnam'),
(18, 5, 30, 'Patna'),
(19, 7, 20, 'Vadodara'),
(20, 6, 40, 'Ghaziabad'),
(21, 1, 10, 'Ludhiana'),
(22, 4, 35, 'Agra'),
(23, 5, 15, 'Nashik'),
(24, 7, 30, 'Faridabad'),
(25, 6, 25, 'Meerut'),
(26, 1, 20, 'Rajkot'),
(27, 4, 40, 'Varanasi'),
(28, 5, 5, 'Srinagar'),
(29, 7, 10, 'Aurangabad'),
(30, 6, 35, 'Dhanbad');












