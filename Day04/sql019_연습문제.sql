-- 1.박지성이 구매한 도서의 출판사와 같은 출판사에서 도서를 구매한 고객 이름
SELECT DISTINCT custid
  FROM Orders
 WHERE bookid IN (SELECT bookid
                    FROM Book
                   WHERE publisher IN(SELECT b.publisher
                                        FROM Customer AS c,Orders AS o,Book AS b
                                       WHERE c.custid = o.custid
                                         AND o.bookid = b.bookid
                                         AND  c.[name] = '박지성'));

-- 3.전체 고객에서 30% 이상이 구매한 도서
SELECT b.custid
     , CONVERT(float,b.custcount )/ b.TotalCount AS '구매율'
  FROM(SELECT custid
            , COUNT(custid) AS custcount
            , (SELECT COUNT(custid) FROM Orders) AS TotalCount
         FROM Orders
        GROUP BY custid) AS b
 WHERE CONVERT(float,b.custcount )/ b.TotalCount >= 0.3;

-- 4-1
INSERT INTO Book(bookid,bookname,publisher,price)
   VALUES(14,'스포츠 세계','대한미디어',10000)

-- 4-2
DELETE FROM Book
 WHERE publisher = '삼성당'

-- 4-3
-- 참조 제약조건에 걸리기 때문에 삭제가 불가
-- 삭제하려면 Orders 테이블에서 bookid7,8을 삭제 후 삭제 가능 
DELETE FROM Book
 WHERE publisher = '이상미디어'

-- 4-4
UPDATE Book
   SET publisher = '대한출판사'
 WHERE bookid IN (SELECT bookid
                    FROM Book
                   WHERE publisher = '대한미디어')
