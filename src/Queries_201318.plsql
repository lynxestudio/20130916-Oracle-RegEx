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

--Query with a regular expression to get all records that start with D
SELECT MEMBERSHIP_NAME,MEMBERSHIP_LASTNAME,MEMBERSHIP_DUE
FROM membership WHERE regexp_like(MEMBERSHIP_LASTNAME,'^D');

--Query with a regular expression to get all records that end with 3
SELECT MEMBERSHIP_NAME,MEMBERSHIP_LASTNAME,MEMBERSHIP_DUE
FROM membership WHERE regexp_like(MEMBERSHIP_DUE,'3$');

--Query with a regular expression to get all records containing A to F
SELECT MEMBERSHIP_NAME,MEMBERSHIP_LASTNAME,MEMBERSHIP_DUE
FROM membership WHERE regexp_like(MEMBERSHIP_LASTNAME,'[A-F]');

--Query to get all records having 1 or 2 times the character A 
SELECT MEMBERSHIP_NAME,MEMBERSHIP_LASTNAME,MEMBERSHIP_DUE
FROM membership WHERE regexp_instr(MEMBERSHIP_NAME,'A{1,2}') > 0;

--Query to get all records that start with a J or E
SELECT MEMBERSHIP_NAME,MEMBERSHIP_LASTNAME,MEMBERSHIP_DUE
FROM membership WHERE regexp_instr(MEMBERSHIP_NAME,'^[J|E]') > 0;

--Query to get all records containing [0-9] in the penultimate digit
--  and 1 to 2 in the last digit 
SELECT MEMBERSHIP_NAME,MEMBERSHIP_LASTNAME,MEMBERSHIP_DUE,MEMBERSHIP_DATE
FROM membership WHERE regexp_instr(MEMBERSHIP_DATE,'[0-9][1-2]$') > 0;