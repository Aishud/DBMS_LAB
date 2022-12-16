use library;
create table historytable like member;
alter table historytable drop primary key;
desc historytable;
/*
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| member_id    | int(10)     | NO   |     | NULL    |       |
| name         | varchar(20) | YES  |     | NULL    |       |
| branch_code  | int(10)     | YES  |     | NULL    |       |
| roll_no      | int(10)     | YES  |     | NULL    |       |
| email        | varchar(20) | YES  |     | NULL    |       |
| date_of_join | date        | YES  |     | NULL    |       |
| status       | varchar(20) | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
7 rows in set (0.01 sec)
*/
CREATE TRIGGER t_up BEFORE UPDATE  ON member 
FOR EACH ROW  
 INSERT INTO historytable VALUES(OLD.Member_id,OLD.Name,OLD.Branch_code,OLD.Roll_no,OLD.Email,OLD.Date_of_join,OLD.Status);
END $

DELIMITER ;
INSERT INTO member VALUES(27,'ARJUN',657,22,'arj@gmail.com','2020-10-19','Regular');
UPDATE member SET roll_no=26 WHERE member_id=27;
SELECT * FROM historytable;
