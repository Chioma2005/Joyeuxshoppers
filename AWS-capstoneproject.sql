USE capstonedb;
CREATE TABLE distribution_centers(
id INT NULL AUTO_INCREMENT,
name VARCHAR (100) NOT NULL,
latitude DECIMAL(10, 8) NOT NULL,
longitude DECIMAL(10, 8) NOT NULL,
PRIMARY KEY(id)
);


CREATE TABLE events (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    sequence_number INT NOT NULL,
    session_id VARCHAR(255) NOT NULL,
    created_at TIMESTAMP NOT NULL,
    ip_address VARCHAR(15) NOT NULL,
    city VARCHAR(255),
    state VARCHAR(255),
    postal_code VARCHAR(20),
    browser VARCHAR(255),
    traffic_source VARCHAR(255),
    uri VARCHAR(255),
    event_type VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);


CREATE TABLE inventory_items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT NOT NULL,
    created_at TIMESTAMP NOT NULL,
    sold_at TIMESTAMP,
    cost DECIMAL(10, 8) NOT NULL,
    product_category VARCHAR(255),
    product_name VARCHAR(255) NOT NULL,
    product_brand VARCHAR(255),
    product_retail_price DECIMAL(10, 8) NOT NULL,
    product_department VARCHAR(255),
    product_sku VARCHAR(50) NOT NULL,
    product_distribution_center_id INT,
    PRIMARY KEY (id)
);


CREATE TABLE order_items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    user_id INT NOT NULL,
    product_id INT NOT NULL,
    inventory_item_id INT NOT NULL,
    status VARCHAR(50) NOT NULL,
    created_at TIMESTAMP NOT NULL,
    shipped_at TIMESTAMP,
    delivered_at TIMESTAMP,
    returned_at TIMESTAMP,
    sale_price DECIMAL(10, 2) NOT NULL
);


CREATE TABLE orders(
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    status VARCHAR(50) NOT NULL,
    gender VARCHAR(10),
    created_at TIMESTAMP NULL,
    returned_at TIMESTAMP,
    shipped_at TIMESTAMP,
    delivered_at TIMESTAMP,
    num_of_item INT NOT NULL
);


CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cost DECIMAL(10, 8) NOT NULL,
    category VARCHAR(255),
    name VARCHAR(255) NOT NULL,
    brand VARCHAR(255),
    retail_price DECIMAL(10, 8) NOT NULL,
    department VARCHAR(255),
    sku VARCHAR(50) NOT NULL,
    distribution_center_id INT
);



CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    age INT,
    gender VARCHAR(10),
    state VARCHAR(255),
    street_address VARCHAR(255),
    postal_code VARCHAR(20),
    city VARCHAR(255),
    country VARCHAR(255),
    latitude DECIMAL(10, 2) NOT NULL,
    longitude DECIMAL(10, 2) NOT NULL,
    traffic_source VARCHAR(255),
    created_at TIMESTAMP NOT NULL
);