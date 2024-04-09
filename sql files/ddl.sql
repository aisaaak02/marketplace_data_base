
CREATE TABLE Customer(
    customer_id INT NOT NULL,
    username VARCHAR(30),
    email VARCHAR(50),
    passwor VARCHAR(30),
    h_desk_email VARCHAR(50),
    name VARCHAR(30),
    address VARCHAR(100),
    phone_num VARCHAR(20),
    category VARCHAR(20),
    PRIMARY KEY(customer_id)
);

CREATE TABLE Bank(
    code VARCHAR(4),
    name VARCHAR(30),
    PRIMARY KEY(code)
);


CREATE TABLE CreditCard(
    number INT NOT NULL,
    expiration_date DATE,
    bank_code VARCHAR(4),
    user_id INT,
    PRIMARY KEY(number),
    FOREIGN KEY (user_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (bank_code) REFERENCES Bank(code)
);


CREATE TABLE Orders(
    order_id INT NOT NULL,
    order_date DATETIME,
    status VARCHAR(30),
    user_id INT,
    PRIMARY KEY(order_id),
    FOREIGN KEY (user_id) REFERENCES Customer(customer_id)
);


CREATE TABLE Invoice(
    invoice_number INT NOT NULL,
    invoice_date DATETIME,
    status VARCHAR(30),
    order_id INT,
    PRIMARY KEY (invoice_number),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    INDEX status (status),
    CHECK (status IN ('Paid', 'Pending', 'Cancelled')) -- CHECK constraint
);



CREATE TABLE Payment(
    id INT NOT NULL,
    payment_date DATETIME,
    method VARCHAR(30),
    amount INT,
    card_number INT,
    invoice_number INT,
    PRIMARY KEY(id),
    FOREIGN KEY (card_number) REFERENCES CreditCard(number),
    FOREIGN KEY (invoice_number) REFERENCES Invoice(invoice_number)
);

CREATE TABLE Shipment(
    id INT NOT NULL,
    shipment_date DATETIME,
    tracking_number INT,
    PRIMARY KEY(id)
);

CREATE TABLE Shop(
    id INT NOT NULL,
    name VARCHAR(30),
    category VARCHAR(30),
    PRIMARY KEY(id)
);

CREATE TABLE ProductType(
    id INT NOT NULL,
    parent INT,
    PRIMARY KEY(id)
);

DESCRIBE ProductType;

CREATE TABLE Product(
    id INT NOT NULL,
    name VARCHAR(30),
    color VARCHAR(30),
    price INT,
    size VARCHAR(30),
    description VARCHAR(100),
    type INT,
    shop_id INT,
    PRIMARY KEY(id),
    FOREIGN KEY (type) REFERENCES ProductType(id),
    FOREIGN KEY (shop_id) REFERENCES Shop(id)
);


CREATE TABLE Photo(
    id INT NOT NULL,
    photo VARCHAR(30) NOT NULL,
    product_id INT,
    PRIMARY KEY(id, photo),
    FOREIGN KEY (product_id) REFERENCES Product(id)
);

CREATE TABLE OrderItem(
    seq_id INT NOT NULL,
    unit_price INT,
    quantity INT,
    status VARCHAR(30),
    order_id INT,
    shipment_id INT,
    product_id INT,
    product_type_id INT,
    status_of_payment VARCHAR(30), -- Change the data type to VARCHAR(30)
    PRIMARY KEY(seq_id, order_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (shipment_id) REFERENCES Shipment(id),
    FOREIGN KEY (product_id) REFERENCES Product(id),
    FOREIGN KEY (product_type_id) REFERENCES ProductType(id),
    FOREIGN KEY (status_of_payment) REFERENCES Invoice(status),
    INDEX fk_orderitem_status_of_payment (status_of_payment)
);


CREATE TABLE CanSell(
    product_type_id INT NOT NULL,
    shop_id INT,
    PRIMARY KEY (product_type_id, shop_id),
    FOREIGN KEY (shop_id) REFERENCES Shop(id),
    FOREIGN KEY (product_type_id) REFERENCES ProductType(id)
);
