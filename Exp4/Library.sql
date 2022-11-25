 CREATE DATABASE library;

 drop database library;

CREATE DATABASE library;

 use library;

CREATE TABLE book (book_id int(10),title varchar(20), language_id int(10), mrp bigint(10), published_id int(10), published_date date, volume int(10), status varchar(15),PRIMARY KEY (book_id));

 CREATE TABLE author (author_id int(10) primary key,name varchar(20),email varchar(20),phono int(20),status varchar(20)); 

 CREATE TABLE book_author (book_id int(10),author_id int(10),CONSTRAINT COMP_NAME PRIMARY KEY (book_id,author_id));

 CREATE TABLE publisher (publisher_id int(10) primary key,name varchar(20),address varchar(10));

 CREATE TABLE member(member_id int(10) primary key,name varchar(20),branch_code int(10),roll_no int(10),email varchar(20),date_of_join date,status varchar(20));

 CREATE TABLE book_issue (issue_id int(10) primary key,date_of_join date,book_id int(20),member_id int(20),expected_date_of_return date);

 CREATE TABLE book_return (issue_id int(10) primary key,actual_date_of_return date ,tae_days date,late_fee int(10));

 CREATE TABLE language (lang_id int(10) primary key,name varchar(20));

  CREATE TABLE late_fee_rule (from_days int(10),to_days int,amount int(10),CONSTRAINT COMP1_NAME PRIMARY KEY (from_days,to_days,amount));
ALTER TABLE book ADD pageno int(20);

 ALTER TABLE book drop column pageno;

 ALTER TABLE language ADD pageno int(20);
ALTER TABLE language drop column pageno;

 CREATE INDEX inbook ON  book_issue(member_id,book_id);

 show index from book_issue;

GRANT SELECT, INSERT, UPDATE, DELETE ON publisher TO 's5d6'@'localhost';

REVOKE INSERT ON *.* FROM 's5d6'@'localhost';
 grant all on *.* to s5d6@localhost with grant option;

 insert into publisher values(2,"nibin","tvl"),(1,"elsa","ktm"),(4,"irene","chgr"),(3,"anna","tvla");

 insert into language values(1,'mal'),(2,'tamil'),(3,'kan'),(4,'telg'),(5,'hindhi');

INSERT INTO book VALUES(1,"C PROGRAM",5,300,2,'2000-10-21',3,"Returned"),(2,"CHERUKADHA",3,150,4,'2010-07-30',1,"NotReturned"),(3,"JAVA",5,200,1,'2010-02-10',2,"Not Returned"),(4,"DATA BASE",2,250,3,'2005-10-03',1,"Returned");

 insert into member values(1,'m1',1,1,"nibin@gamil.com","2022-05-28","valid");

 
 

 insert into late_fee_rule values(11,15,100);

 insert into book_return values(1,"2022-10-28","2022-11-28",150);

 insert into book_author values(1,1);

 insert into book_issue values(1,"2022-01-23",1,1,"2022-05-24");

insert into author values(1,'nibin','nibin@gmail.com',7999,'avil');
ALTER TABLE book ADD CONSTRAINT c1 FOREIGN KEY(published_id) REFERENCES publisher(publisher_id);

ALTER TABLE book ADD CONSTRAINT c2 FOREIGN KEY(language_id) REFERENCES language(lang_id); 

LOAD DATA INFILE '///var/lib/mysql-files/book.csv' INTO TABLE book FIELDS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 ROWS;

 update book  set status = (CASE book_id WHEN 1 THEN 'not_avil'  when 2 THEN 'not_avil' when 3 THEN 'not_avil' when 4 THEN 'not_avil'when 5 THEN 'not_avil'    END)  Where book_id IN(1,2,3,4,5);

 DELETE  FROM book WHERE status = 'not_avil';

 UPDATE book SET book_id= 99 where book_id=1;

 UPDATE book SET book_id= 98 where book_id=2;

UPDATE book SET book_id= 97 where book_id=3;

