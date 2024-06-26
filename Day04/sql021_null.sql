-- NULL에 대한 고찰
-- MyBook 테이블에서 시작
SELECT bookid
     , price +100
  FROM Mybook;

-- 합계, 전체의 COUNT는 문제x, 평균에서와 price COUNT는 NULL값이 빠짐.
SELECT SUM(price),AVG(price),COUNT(*),COUNT(price)
  FROM Mybook

-- bookid가 없는 데이터로 통계를 낼때는 NULL이 나와야 함
SELECT SUM(price),AVG(price),COUNT(*),COUNT(price)
  FROM Mybook
 WHERE bookid >=4
  
-- NULL비교(!)
-- NULL은 일반 비교연사자로 비교x
-- IS / IS NOT
SELECT *
  FROM MyBook
 WHERE price IS NULL; -- IS NOT NULL;

-- ISNULL() 함수 : NULL인 데이터를 다른 값으로 치환
-- 사전작업 (Customer 테이블)
SELECT *
  FROM Customer
 WHERE phone IS NULL;

UPDATE Customer
   SET phone = NULL
 WHERE custid = 2;

-- NULL인 폰번호를 '연락처 없음'으로 대체(치환)
SELECT custid
     , [name]
     , [address]
     , ISNULL(phone,'연락처 없음') AS phone
  FROM Customer;