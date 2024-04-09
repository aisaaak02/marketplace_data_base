
INSERT INTO Customer VALUES
    (1, 'john_doe', 'john.doe@example.com', 'password123', 'helpdesk@example.com', 'John Doe', '123 Main St', '555-1234', 'Regular'),
    (2, 'jane_smith', 'jane.smith@example.com', 'pass123', 'helpdesk@example.com', 'Jane Smith', '456 Oak St', '555-5678', 'VIP'),
    (3, 'bob_jones', 'bob.jones@example.com', 'secret321', 'helpdesk@example.com', 'Bob Jones', '789 Pine St', '555-8765', 'Regular'),
    (4, 'alice_white', 'alice.white@example.com', 'pass456', 'helpdesk@example.com', 'Alice White', '101 Elm St', '555-4321', 'VIP'),
    (5, 'eva_brown', 'eva.brown@example.com', 'password789', 'helpdesk@example.com', 'Eva Brown', '202 Maple St', '555-9876', 'Regular'),
    (6, 'alex_miller', 'alex.miller@example.com', 'secret789', 'helpdesk@example.com', 'Alex Miller', '303 Cedar St', '555-5678', 'Regular'),
    (7, 'olivia_johnson', 'olivia.johnson@example.com', 'pass789', 'helpdesk@example.com', 'Olivia Johnson', '404 Pine St', '555-8765', 'VIP'),
    (8, 'sam_carter', 'sam.carter@example.com', 'secret123', 'helpdesk@example.com', 'Sam Carter', '505 Oak St', '555-1234', 'Regular'),
    (9, 'lucas_taylor', 'lucas.taylor@example.com', 'pass789', 'helpdesk@example.com', 'Lucas Taylor', '606 Elm St', '555-4321', 'Regular'),
    (10, 'emily_wilson', 'emily.wilson@example.com', 'password123', 'helpdesk@example.com', 'Emily Wilson', '707 Cedar St', '555-9876', 'VIP');

-- Sample data for Bank Table
INSERT INTO Bank VALUES
    ('1234', 'ABC Bank'),
    ('5678', 'XYZ Bank'),
    ('9101', 'PQR Bank'),
    ('1122', 'LMN Bank'),
    ('3344', 'JKL Bank'),
    ('5566', 'GHI Bank'),
    ('7788', 'DEF Bank'),
    ('9900', 'MNO Bank'),
    ('2233', 'UVW Bank'),
    ('4455', 'QRS Bank');

-- Sample data for CreditCard Table
INSERT INTO CreditCard VALUES
    (987654321, '2023-12-31', '1234', 1),
    (123456789, '2024-06-30', '5678', 2),
    (111122223, '2023-10-31', '9101', 3),
    (444455556, '2024-04-30', '1122', 4),
    (777788889, '2023-08-31', '3344', 5),
    (112233445, '2024-02-28', '5566', 6),
    (223344556, '2023-11-30', '7788', 7),
    (334455667, '2024-09-30', '9900', 8),
    (445566778, '2023-07-31', '2233', 9),
    (556677889, '2024-05-31', '4455', 10);

-- Sample data for Orders Table
INSERT INTO Orders VALUES
    (1001, '2023-12-15 08:00:00', 'Pending', 1),
    (1002, '2023-12-16 09:30:00', 'Shipped', 2),
    (1003, '2023-12-17 11:45:00', 'Delivered', 3),
    (1004, '2023-12-18 14:15:00', 'Pending', 4),
    (1005, '2023-12-19 16:30:00', 'Cancelled', 5),
    (1006, '2023-12-20 18:00:00', 'Shipped', 6),
    (1007, '2023-12-21 20:30:00', 'Delivered', 7),
    (1008, '2023-12-22 22:45:00', 'Pending', 8),
    (1009, '2023-12-23 14:15:00', 'Pending', 9),
    (1010, '2023-12-24 16:30:00', 'Cancelled', 10);

-- Sample data for Invoice Table
INSERT INTO Invoice VALUES
    (5001, '2023-12-15 08:30:00', 'Paid', 1001),
    (5002, '2023-12-16 10:00:00', 'Paid', 1002),
    (5003, '2023-12-17 12:15:00', 'Pending', 1003),
    (5004, '2023-12-18 14:45:00', 'Paid', 1004),
    (5005, '2023-12-19 17:00:00', 'Cancelled', 1005),
    (5006, '2023-12-20 18:30:00', 'Paid', 1006),
    (5007, '2023-12-21 21:00:00', 'Pending', 1007),
    (5008, '2023-12-22 23:15:00', 'Paid', 1008),
    (5009, '2023-12-23 15:45:00', 'Pending', 1009),
    (5010, '2023-12-24 17:00:00', 'Cancelled', 1010);


INSERT INTO Payment VALUES
    (2001, '2023-12-15 09:00:00', 'Credit Card', 100, 987654321, 5001),
    (2002, '2023-12-16 11:00:00', 'Debit Card', 75, 123456789, 5002),
    (2003, '2023-12-17 13:30:00', 'Bank Transfer', 50, 111122223, 5003),
    (2004, '2023-12-18 15:00:00', 'Cash on Delivery', 80, NULL, 5004),
    (2005, '2023-12-19 18:00:00', 'PayPal', 60, NULL, 5005),
    (2006, '2023-12-20 19:30:00', 'Credit Card', 90, 112233445, 5006),
    (2007, '2023-12-21 22:00:00', 'Debit Card', 120, 223344556, 5007),
    (2008, '2023-12-22 00:15:00', 'Bank Transfer', 30, 334455667, 5008),
    (2009, '2023-12-23 16:45:00', 'Cash on Delivery', 45, NULL, 5009),
    (2010, '2023-12-24 18:00:00', 'PayPal', 75, NULL, 5010);

-- Sample data for Shipment Table
INSERT INTO Shipment VALUES
    (3001, '2023-12-15 10:00:00', 123456789),
    (3002, '2023-12-16 12:30:00', 987654321),
    (3003, '2023-12-17 14:45:00', 111122223),
    (3004, '2023-12-18 17:15:00', 444455556),
    (3005, '2023-12-19 19:30:00', 777788889),
    (3006, '2023-12-20 21:00:00', 112233445),
    (3007, '2023-12-21 23:15:00', 223344556),
    (3008, '2023-12-22 01:45:00', 334455667),
    (3009, '2023-12-23 18:15:00', 445566778),
    (3010, '2023-12-24 20:30:00', 556677889);

-- Sample data for Shop Table
INSERT INTO Shop VALUES
    (4001, 'Electronics Shop', 'Electronics'),
    (4002, 'Clothing Store', 'Apparel'),
    (4003, 'Bookstore', 'Books'),
    (4004, 'Furniture Mart', 'Furniture'),
    (4005, 'Sports Emporium', 'Sports'),
    (4006, 'Home Decor', 'Decor'),
    (4007, 'Gourmet Foods', 'Food'),
    (4008, 'Jewelry Boutique', 'Jewelry'),
    (4009, 'Fitness Gear', 'Sports'),
    (4010, 'Art Supplies', 'Art');

-- Sample data for ProductType Table
INSERT INTO ProductType VALUES
    (1, NULL),
    (2, NULL),
    (3, NULL),
    (4, NULL),
    (5, NULL),
    (6, 3),
    (7, 4),
    (8, 2),
    (9, 5),
    (10, 1);

-- Sample data for Product Table
INSERT INTO Product VALUES
    (6001, 'Smartphone', 'Black', 499, 'Large', 'High-end smartphone', 1, 4001),
    (6002, 'T-shirt', 'Blue', 20, 'Medium', 'Cotton T-shirt', 2, 4002),
    (6003, 'Book', 'Paperback', 15, 'N/A', 'Bestseller novel', 3, 4003),
    (6004, 'Sofa', 'Brown', 799, '3-seater', 'Comfortable sofa', 4, 4004),
    (6005, 'Basketball', 'Orange', 30, 'Official Size', 'Durable basketball', 5, 4005),
    (6006, 'Wall Clock', 'Silver', 50, 'Medium', 'Modern wall clock', 6, 4006),
    (6007, 'Ottoman', 'Green', 120, 'Small', 'Soft fabric ottoman', 7, 4007),
    (6008, 'Jeans', 'Denim Blue', 45, 'Medium', 'Casual denim jeans', 8, 4008),
    (6009, 'Yoga Mat', 'Purple', 25, 'Large', 'Non-slip yoga mat', 9, 4009),
    (6010, 'Canvas Paint Set', 'Red', 40, 'N/A', 'Complete canvas painting set', 10, 4010);


INSERT INTO Photo VALUES
    (7001, 'smartphone_photo.jpg', 6001),
    (7002, 'tshirt_photo.jpg', 6002),
    (7003, 'book_photo.jpg', 6003),
    (7004, 'sofa_photo.jpg', 6004),
    (7005, 'basketball_photo.jpg', 6005),
    (7006, 'wall_clock_photo.jpg', 6006),
    (7007, 'ottoman_photo.jpg', 6007),
    (7008, 'jeans_photo.jpg', 6008),
    (7009, 'yoga_mat_photo.jpg', 6009),
    (7010, 'paint_set_photo.jpg', 6010);

-- Sample data for OrderItem Table
INSERT INTO OrderItem VALUES
    (1, 5, 2, 'Shipped', 1001, 3001, 6001, 1, 'Paid'),
    (2, 2, 3, 'Delivered', 1002, 3002, 6002, 2, 'Paid'),
    (3, 3, 1, 'Pending', 1003, 3003, 6003, 3, 'Pending'),
    (4, 6, 4, 'Pending', 1004, 3004, 6004, 4, 'Paid'),
    (5, 4, 2, 'Cancelled', 1005, 3005, 6005, 5, 'Cancelled'),
    (6, 1, 5, 'Shipped', 1006, 3006, 6006, 6, 'Paid'),
    (7, 3, 6, 'Delivered', 1007, 3007, 6007, 7, 'Paid'),
    (8, 2, 7, 'Pending', 1008, 3008, 6008, 8, 'Paid'),
    (9, 4, 8, 'Pending', 1009, 3009, 6009, 9, 'Pending'),
    (10, 2, 9, 'Cancelled', 1010, 3010, 6010, 10, 'Cancelled');
