SQL commands: SQL commands are instructions to communicate with the database.It is also performed spwcific tasks,functions and query of data.
Types: There are 5 types 
1.Data Definition Language(DDL):
DDL changes are the structures of the table like create,alter,update,drop.
All the DDL commands are auto-commited and save permanently.
DDL commands are - [DC-CART]
CREATE:Create new table in databases.
Syntax: CREATE TABLE TABLE_NAME(column_names Datatypes[....]);

-- creating database
Create database practice;
-- Create query
CREATE TABLE student(ID int NOT NULL, Name Varchar(80) NOT NULL,Age int not null,college char(80) not null,address varchar(60) not null,primary key(ID));
select*from student;
-- Insert query
Insert into student values(3251,'suresh',20,'RGM','Nandyal'),(3248,'Nani',21,'RGM','Nandyal'),(3204,'C sudarshan',20,'SVCE','Tirupati'),(3207,'Rami Reddy',21,'SVEC','Tirupati'),(3224,'kaasi',22,'SREC','Anantaput'),(3229,'subba reddy',22,'Audishankara','Nellore'),(3250,'Madhav',23,'New Horizonn','Bangaluru');
-- select query
select*from student;
-- select some particular columns data
select ID,Name,college from student;
-- Where condition
select*from student where college='RGM';
-- AND operator
select* from student where Age<23 And address="Tirupati";
-- OR operator
select * from student where Age>23 OR address='Tirupati';
-- Update query
update student set college='SVCE' where ID=3207;
select * from student;
-- delete query
delete from student where  ID=3204;
 select*from student;
 -- Like operator that is two wildcard operators percentage(%) - 0 to multiple chars and underscore(_) - only one chars
 select*from student where Name like 's%';       -- starts with s 
 select*from student where Name like '%a%';      -- return names where a present at any position
 select*from student where Name like '_a%';      -- return names where a present at 2nd position
 select*from student where Name like 's_%_%';    -- return names where starts with s and atleast 3 len of char
 select*from student where Name like '%y';       -- return names where ends with y
 select*from student where Name like '_u%h';     -- return names u have 2nd position and must be ends with h
 select*from student where college like 'R_M';    -- return colleges where start with R and ends with M
 -- limit condition
select*from student limit 3;
-- delete command
delete from student where Name="kaasi";
commit;
-- Alter commands has ADD(inserting new column),Modify
Alter table student add(Marks INT);
-- Rename in Alter change column names
Alter table student rename column Marks to stu_marks;
-- Alter/Modify change the datatype for columns
Alter table student modify column Age varchar(30);
-- desc
desc student;
-- Drop command to drop entire data and structure or multiple columns
alter table student drop column  stu_marks,drop column  Age;
-- truncate to delete only data in table
truncate table student;
select*from student;
-- drop to delete both structure and data
drop table student;
select*from student;
