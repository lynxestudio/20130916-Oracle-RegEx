--Drop table
--drop table Membership;

--Create the TABLE

CREATE TABLE Membership
(
 membership_id        number(4) primary key,
 membership_name     varchar(256),
 membership_lastname     varchar(256),
 membership_number     varchar(13),
 membership_due     number(8,4),
 membership_date     date
 );
