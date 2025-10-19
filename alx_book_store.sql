CREATE DATABASE IF NOT EXIST alx_book_store;

-- Use the database
USE alx_book_store

--Create the Authors table
CREATE TABLE AUTHORS (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_mname VARCHAR(215) NOT NULL

);

--Create the Bokks table
CREATE TABLE BOOKS (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id INT,
    price DOUBLE,
    publication_date DATE,
    FOREIGN KEY (author_id) REFRENCES AUTHORS(author_id)
    
);

--Create the Customers table
CREATE TABLE CUSTOMERS (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215),
    address TEXT

);

--Create the Orders table
CREATE TABLE ORDERS(
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFRENCES CUSTOMERS(customer_id)

);

--Create the order_Details table
CREATE TABLE ORDER_DETAILS (
    orderdetailed INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity DOUBLE,
    FOREIGN KEY (order_id) REFRENCES ORDERS(order_id),
    FOREIGN KEY (book_id) REFRENCES BOOKS(book_id)
);