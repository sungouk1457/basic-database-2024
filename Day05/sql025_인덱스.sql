-- 인덱스(책의 목차와 기능이 동일)
-- Book의 bookname 열에 넌클러스트드 인덱스 ix_Book_bookname을 생성하시오
CREATE INDEX ix_Book_bookname ON Book(bookname);

-- Customer의 name 열에 클러스터드 인덱스 CIX_Customer_name을 생성
-- 보통 이런식으로 안함
-- 기본키에 클로스터드, 나머지 컬럼 넌클러스터드 인덱스 설정
CREATE CLUSTERED INDEX CIX_Customer_name ON Customer(name);

-- Book에 publisher, price 동시에 인덱스 IX_Book_pubprice 인덱스 
CREATE INDEX IX_Book_pubprice ON Book(publisher, price)

-- 인덱스 재구성
-- PK인 기본키는 값이 추가되면 자동으로 인덱스 재구성
-- 넌클러스터드 인덱스는 재구성 필요할 수 있음(DBA 정기적으로)
ALTER INDEX IX_Book_pubprice ON Book REBUILD;
ALTER INDEX IX_Book_pubprice ON Book REORGANIZE; -- 인덱스 재정리

-- 인덱스 삭제
DROP INDEX ix_book을 ON Book;
DROP INDEX CIX_Customer_name ON Customer;