-- 전체 고객중 도서를 구매하지 않은 고객의 이름을 조회
SELECT [name]
  FROM Customer
EXCEPT
SELECT [name]
  FROM Customer
 WHERE custid IN (SELECT DISTINCT custid FROM Orders)

-- 합집합 중복을 허용안함
SELECT [name]
  FROM Customer
 UNION
SELECT [name]
  FROM Customer
 WHERE custid IN (SELECT DISTINCT custid FROM Orders)

-- 합집합 중 중복을 허용
SELECT [name]
  FROM Customer
 UNION ALL
SELECT [name]
  FROM Customer
 WHERE custid IN (SELECT DISTINCT custid FROM Orders)

-- 교집합
   SELECT [name]
     FROM Customer
INTERSECT
   SELECT [name]
     FROM Customer
    WHERE custid IN (SELECT DISTINCT custid FROM Orders)

-- UNION
SELECT bookid  -- int
     , bookname  -- varchar(40)
  FROM Book
 UNION
SELECT custid  --int
     , [name] 
  FROM Customer;

-- EXIST, 하나의 테이블에 존재하는 값만 보고싶다
SELECT c.[name]
     , c.address
  FROM Customer AS c
 WHERE EXISTS(SELECT *
                FROM Orders AS o
               WHERE o.custid = c.custid);
