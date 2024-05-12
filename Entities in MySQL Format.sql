create database Booking;
use Booking;

create table Users(
userID int primary key,
Name varchar(255),
Email varchar(255),
Phone varchar(20)
);

drop table Services;
create table Services(
ServiceID int primary Key,
Name varchar(255),
Description text,
Price decimal(2,2)
);

create table Bookings(
BookingID int primary Key,
userID int,
ServiceID int,
Date Date,
Status varchar(50),
foreign key(UserID) references Users(userID)
);

create table locations(
LocationID int primary key,
Name varchar(255),
Address varchar(255),
City varchar(100),
Country varchar(255)
);

create table Reviews(
ReviewID int primary Key,
userID int,
ServiceID int,
Rating int,
Comment text,
foreign key(userID) references Users(userID),
foreign key(ServiceID) references Services(ServiceID)
);

drop table Payment;
create table Payment(
PaymentID int primary key,
BookingID int,
Amount decimal(20,2),
PaymentDate Date,
PaymentMethod varchar(100),
foreign key(BookingID) references Bookings(BookingID)
);

create table CancellationRefund(
CancellationRefundID int primary key,
BookingID int,
CancellationDate Date,
RefundAmount decimal(20,2),
foreign key(BookingID) references Bookings(BookingID)
);

drop table Invoices;
create table Invoices(
InvoiceID int primary Key,
userID int,
BookingID int,
Amount decimal(20,2),
Date Date,
foreign key(userID) references Users(userID),
foreign key(BookingID) references Bookings(BookingID)
);

create table Notifications(
NotificationsID int primary key,
userID int,
Message text,
foreign key(userID) references Users(userID)
);





