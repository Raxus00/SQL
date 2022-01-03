DROP TABLE IF EXISTS Orders;
#DROP TABLE IF EXISTS Kläder;
DROP TABLE IF EXISTS Kund; 


CREATE TABLE Kund(
	c_id int auto_increment not NULL,
    FName varchar(50),
    LName varchar(50),
    Street varchar(50),
    City varchar(50),
    zipCode varchar(50),
    primary key(c_id));
    

CREATE TABLE kläder(
    Articlenumber int ,
    Brand varchar(50),
    Ptype varchar(50),
    Stype varchar(50),
    Colour varchar(50),
    Gender varchar(6),
    SellingPrice int,
    Size varchar(5),
    primary key (Articlenumber));



CREATE TABLE Orders(
	OrderID int ,
    c_id int,
    ID int,
    Amount int,
    foreign key(c_id) references Kund(c_id),
    foreign key(ID) references Kläder(Articlenumber));

update Orders SET c_id=5 where OrderID=12 ;
SET SQL_SAFE_UPDATEs = 0;
select * from Kund;
select * from Kläder;
select * from Orders;
