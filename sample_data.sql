-- sample_data.sql: Inserts representative data for testing the system
 
----------------------------------------------------
-- CUSTOMER DATA
----------------------------------------------------
 
INSERT INTO Customer (name, email, phone)
VALUES ('Alice Smith', 'alice@example.com', '1111111111');
 
INSERT INTO Customer (name, email, phone)
VALUES ('Bob Johnson', 'bob@example.com', '2222222222');
 
INSERT INTO Customer (name, email, phone)
VALUES ('Jane Doe', 'jane@example.com', '3333333333');
 
INSERT INTO Customer (name, email, phone)
VALUES ('John Doe', 'john@example.com', '4444444444');
 
----------------------------------------------------
-- RESTAURANT DATA
----------------------------------------------------
 
INSERT INTO Restaurant (name, location)
VALUES ('Pizza Palace', 'New York');
 
INSERT INTO Restaurant (name, location)
VALUES ('Sushi House', 'Los Angeles');
 
INSERT INTO Restaurant (name, location)
VALUES ('Burger House', 'Chicago');
 
----------------------------------------------------
-- MENU ITEMS
----------------------------------------------------
 
-- Pizza Palace
INSERT INTO Menu_Item (restaurant_id, name, price)
VALUES (1, 'Pepperoni Pizza', 12.99);
 
INSERT INTO Menu_Item (restaurant_id, name, price)
VALUES (1, 'Veggie Pizza', 11.99);
 
INSERT INTO Menu_Item (restaurant_id, name, price)
VALUES (1, 'Cheese Pizza', 10.99);
 
-- Sushi Spot
INSERT INTO Menu_Item (restaurant_id, name, price)
VALUES (2, 'California Roll', 8.99);
 
INSERT INTO Menu_Item (restaurant_id, name, price)
VALUES (2, 'Salmon Sushi', 13.99);
 
INSERT INTO Menu_Item (restaurant_id, name, price)
VALUES (2, 'Tuna Roll', 12.49);
 
-- Burger House
INSERT INTO Menu_Item (restaurant_id, name, price)
VALUES (3, 'Classic Burger', 9.99);
 
INSERT INTO Menu_Item (restaurant_id, name, price)
VALUES (3, 'Cheeseburger', 10.99);
 
INSERT INTO Menu_Item (restaurant_id, name, price)
VALUES (3, 'Chicken Burger', 11.49);
 
----------------------------------------------------
-- ORDERS
----------------------------------------------------
 
INSERT INTO Orders (customer_id, restaurant_id, status)
VALUES (1, 1, 'Completed');
 
INSERT INTO Orders (customer_id, restaurant_id, status)
VALUES (2, 2, 'Completed');
 
INSERT INTO Orders (customer_id, restaurant_id, status)
VALUES (3, 3, 'Pending');
 
INSERT INTO Orders (customer_id, restaurant_id, status)
VALUES (4, 1, 'Completed');
 
----------------------------------------------------
-- ORDER DETAILS
----------------------------------------------------
 
-- Order 1 (Alice - Pizza Palace)
INSERT INTO Order_Details VALUES (1, 1, 2); -- 2 Pepperoni Pizza
INSERT INTO Order_Details VALUES (1, 2, 1); -- 1 Veggie Pizza
 
-- Order 2 (Bob - Sushi Spot)
INSERT INTO Order_Details VALUES (2, 4, 3); -- 3 California Rolls
INSERT INTO Order_Details VALUES (2, 5, 2); -- 2 Salmon Sushi
 
-- Order 3 (Jane - Burger House)
INSERT INTO Order_Details VALUES (3, 7, 1); -- 1 Classic Burger
INSERT INTO Order_Details VALUES (3, 8, 2); -- 2 Cheeseburgers
 
-- Order 4 (John - Pizza Palace)
INSERT INTO Order_Details VALUES (4, 3, 1); -- 1 Cheese Pizza
INSERT INTO Order_Details VALUES (4, 1, 1); -- 1 Pepperoni Pizza
 
----------------------------------------------------
-- PAYMENTS
----------------------------------------------------
 
INSERT INTO Payment (order_id, amount, payment_method)
VALUES (1, 37.97, 'Credit Card');
 
INSERT INTO Payment (order_id, amount, payment_method)
VALUES (2, 41.45, 'PayPal');
 
INSERT INTO Payment (order_id, amount, payment_method)
VALUES (4, 23.98, 'Debit Card');
