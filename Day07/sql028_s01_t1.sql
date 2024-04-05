-- 트랜잭션1
BEGIN TRANSACTION;
USE madang;
SELECT * 
FROM   Book
WHERE  bookid=1;

 

UPDATE Book 
SET     price=7100
WHERE  bookid=1;

SELECT * 
FROM   Book
WHERE  bookid=1;

 

COMMIT;
ROLLBACK;