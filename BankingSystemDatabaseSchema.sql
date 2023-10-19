create table Customers
(
	customerID int not null primary key,
	customerName varchar(50),
	customerPhone int,
	customerEmail varchar(50),
	customerType varchar(50)
);

create table CustomerPurchase
(
	purchaseID int not null primary key,
	purchaseDate date,
	quantity int,
	customerID int,
	productCode varchar(50)
);


create table Transactions
(
	transactionID int not null primary key,
	transactionDate date,
	transactionAmount int,
	transactionMode varchar(50),
	purchaseID int,
	accountID int
);


create table Accounts
(
	accountID int not null primary key,
	accountName varchar(50),
	customerID int,
	accountType varchar(50)
);

create table Merchants
(
	merchantID int not null primary key,
	merchantName varchar(50),
	merchantPhone int,
	merchantEmail varchar(50)
);


alter table CustomerPurchase
add foreign key (customerID) references Customers(customerID);


alter table Transactions
add foreign key (purchaseID) references CustomerPurchase(purchaseID);


alter table Transactions
add foreign key (accountID) references Accounts(accountID);


alter table Accounts
add foreign key (customerID) references Customers(customerID);