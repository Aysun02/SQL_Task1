CREATE DATABASE DemoApp
USE DemoApp
CREATE TABLE Users (
Id int PRIMARY KEY IDENTITY(1,1),
Name nvarchar(20) NOT NULL,
Surname nvarchar(20) NOT NULL,
Email nvarchar(50) UNIQUE,
RegistrationDate datetime CHECK(RegistrationDate > 2022-10-11 ) DEFAULT GETDATE,
ContactNumber nvarchar(100) DEFAULT '+994000000000',
Age int CHECK(Age>18),
Address nvarchar(100)
)

INSERT INTO Users (Name,Surname,Email,RegistrationDate, ContactNumber,Age,Address)
VALUES ( 'Aysun', 'Huseynli', 'aysunvh@code.edu.az', '2012-06-12 10:34:09 AM', '+99400505050', 19, 'Hesen Eliyev 96a')
INSERT INTO Users(Name, Surname,Email, Age, Address)
VALUES ( 'Konul','Huseynli','konulrh@code.edu.az', 20, 'Sakit Qocayev 39')
INSERT INTO Users( Name, Surname, Email, ContactNumber, Age, Address)
VALUES ('Gulcannat','Baxshaliyeva', 'juliaparadies08@gmail.com', '+99450550505', 19, 'Insaatcilar')

CREATE TABLE Categories (
Id int PRIMARY KEY IDENTITY(1,1),
Name nvarchar(20) NOT NULL,
Slug nvarchar(50) UNIQUE,
CreatedAt datetime CHECK(CreatedAt > 2022-10-11 ) DEFAULT '2022-10-11',
IsActive BIT
)

INSERT INTO Categories(Name, Slug,CreatedAt, IsActive)
VALUES ('Color', 'on-page-basics-color','2022-10-11 12:44:53 AM', 0)
INSERT INTO Categories(Name, Slug, IsActive)
VALUES ('Size', 'on-page-basics-size', 1)
INSERT INTO Categories(Name, Slug,CreatedAt)
VALUES ('Price', 'on-page-basics-price','2003-06-09 08:11:09 AM')
SELECT * FROM Users
SELECT Name, Surname, Email FROM Users
SELECT * FROM Categories
SELECT Name, IsActive FROM Categories
DROP TABLE Users
DROP TABLE Categories
