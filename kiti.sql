CREATE DATABASE Kiti;
USE Kiti;

CREATE TABLE Users (
	id INT PRIMARY KEY AUTO_INCREMENT,
    fullName VARCHAR(50) NOT NULL,
    username VARCHAR(32) NOT NULL,
    password VARCHAR(32) NOT NULL,
    address TEXT NOT NULL,
    phoneNumber varchar(10) NOT NULL,
    isAdmin BOOL
);

CREATE TABLE Products (
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    photoURL TEXT,
    rating INT,
    price DOUBLE NOT NULL,
    salePercent FLOAT
);

CREATE TABLE Vouchers (
	id INT PRIMARY KEY AUTO_INCREMENT,
    code VARCHAR(6) NOT NULL,
    description TEXT,
    startDate DATE NOT NULL,
    endDate DATE NOT NULL
);

INSERT INTO Users (fullName, username, password, address, phoneNumber, isAdmin)
VALUES
	("Nguyen Van A", "anv123", MD5("123456"), "Can Tho", "0123456789", true),
    ("Tran Van B", "btv456", MD5("123123"), "An Giang", "0123123123", false),
    ("Le Thi C", "clt789", MD5("789789"), "TP. HCM", "0123321456", false);
    
SELECT * FROM Users;