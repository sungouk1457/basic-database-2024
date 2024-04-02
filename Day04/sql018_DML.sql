-- 삽입(INSERT)
INSERT INTO Book(bookid, bookname, publisher, price)
     VALUES(11,'스포츠 의학','한솔의학서적',90000)

-- 컬럼순서를 변경가능
INSERT INTO Book(bookid, bookname, price,publisher)
     VALUES(11,'스포츠 의학',90000,'한솔의학서적')

-- 속성리스트를 생략가능(컬럼이 완전 일치)
INSERT INTO Book
     VALUES(12,'스포츠 의학2','한솔의학서적',90000)

-- 값을 생략가능(단, 값을 생략하면 컬럼을 다 지정해줘야 함)
INSERT INTO Book(bookid, bookname, publisher)
     VALUES(13,'스포츠 의학3','한솔의학서적')

-- 새 테이블 생성
CREATE TABLE Imported_Book (
  bookid      INT,
  bookname    VARCHAR(40),
  publisher   VARCHAR(40),
  price       INT 
);
INSERT INTO Imported_Book VALUES(21, 'Zen Golf', 'Pearson', 12000);
INSERT INTO Imported_Book VALUES(22, 'Soccer Skills', 'Human Kinetics', 15000);

-- 특수 INSERT INTO SELECT
INSERT INTO Book(bookid, bookname, publisher, price)
     SELECT bookid,bookname,publisher,price
       FROM Imported_Book

-- 수정(UPDATE)
-- 사전 준비,이전의 Customer 테이블 내용을 CustomerNew로 복사
SELECT custid, name ,address, phone
  INTO CustomerNew
  FROM Customer

-- Customer 테이블에서 고객번호가 5인 고객의 주소를 대한민국 부산으로 변경
UPDATE Customer
   SET [address] = '대한민국 부산'
 WHERE custid = 5;

-- CustomerNew 테이블에서 고객번호가 5인 고객의 주소를 대한민국 광주로 변경
UPDATE CustomerNew
   SET [address] = '대한민국 광주'
 WHERE custid = 5;

-- Customer 테이블에서 박세리 고객의 주소를 김연아 주소로 변경
UPDATE Customer
   SET [address]=(SELECT [address]
                    FROM Customer
                   WHERE [name] = '김연아')
 WHERE [name] = '박세리';

--삭제
DELETE FROM CustomerNew
 WHERE custid = 5;

-- 수정,삭제는 항상 트랜젝션과 같이 실행해야 함


SELECT bookid, bookname ,publisher, price
  INTO BookNew
  FROM Book


DROP TABLE BookNew





