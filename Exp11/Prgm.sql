delimiter $
CREATE PROCEDURE book_issue_register() 
 BEGIN 
 DECLARE count INTEGER DEFAULT 0; 
 DECLARE id INT DEFAULT 0; 
 DECLARE is_d DATE ; 
 DECLARE b_id INT DEFAULT 0; 
 DECLARE m_id INT DEFAULT 0; 
 DECLARE re_d DATE; 
 DECLARE cur_print CURSOR FOR 
  SELECT * FROM book_issue;  
 DECLARE CONTINUE HANDLER FOR NOT FOUND SET count=1; 
 OPEN cur_print; 
 label: LOOP 
  FETCH cur_print INTO id,is_d,b_id,m_id,re_d; 
  IF count = 1 THEN 
   LEAVE label; 
  END IF; 
  SELECT CONCAT(id,'||',is_d,'||',b_id,'||',m_id,'||',re_d) AS BookIssueReg; 
  END LOOP label; 
  CLOSE cur_print; 
END$
DELIMITER ;

CALL book_issue_register;
