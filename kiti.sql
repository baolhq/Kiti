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
    
INSERT INTO `products` (`id`, `name`, `description`, `photoURL`, `rating`, `price`, `salePercent`) VALUES
(1, 'Laptop', 'Acer Nitro 5', 'https://product.hstatic.net/1000238589/product/laptop_acer_nitro_5_gaming_an515-54-5812_c05b47ff222541ab9fbf11eb9f0046e8.jpg', 4, 20000000, 10),
(2, 'Headphone', 'Airpods MAX', 'https://cellphones.com.vn/media/catalog/product/a/p/apple-airpods-max_1.jpg', 5, 12000000, 15),
(3, 'Noodle', 'Hao Hao', 'https://vn-test-11.slatic.net/p/644d7ea90c85e4d2bee22275a4f26536.jpg_720x720q80.jpg_.webp', 5, 100000, 10),
(4, 'Computer Mouse', 'LOGITECH', 'https://prooffice.vn/wp-content/uploads/2020/05/Chu%E1%BB%99t-Logitech-G102.jpg', 4, 1000000, 50),
(5, 'Keyboard', 'LOGITECH', 'https://ben.com.vn/Content/Images/Products/B%C3%A0n%20ph%C3%ADm%20c%C6%A1%20Logitech%20G%20Pro%20X%20RGB%20Lightsync%20-%20%20GX%20Blue%20Switch%20Gaming%20Keyboard-3.jpg', 5, 700000, 10),
(6, 'iPhone', '12 PRO MAX', 'https://cdn.tgdd.vn/Products/Images/42/213033/iphone-12-pro-max-xanh-duong-new-600x600-600x600.jpg', 3, 30500000, 2.6),
(7, 'T-shirt', 'LB STAY TRUE', 'https://static.dosi-in.com/images/detailed/101/dosiin-stay-true-clothes-ao-thun-unisex-local-brand-stay-true-phong-nam-nu-tay-lo-oversize-form-101150.jpeg', 5, 300000, 5),
(8, 'Medical Masks', '4 layers', 'http://baochinhphu.vn/Uploaded/phungthithuhuyen/2020_02_28/khau-trang-y-te-xanh-4-lop-4.jpg', 5, 60000, 10);

INSERT INTO `vouchers` (`id`, `code`, `description`, `startDate`, `endDate`) VALUES
(1, 'FSHIP', 'Freeship for bill from 99K', '2021-07-01', '2021-09-01'),
(2, 'D50', 'Reduce 50% up to 30K for bill from 200K', '2021-06-01', '2021-12-30'),
(3, 'D100', 'Reduce 100K for bill from 299K', '2021-07-01', '0000-00-00');
    
SELECT * FROM Users;
SELECT * FROM Products;
SELECT * FROM Vouchers;
