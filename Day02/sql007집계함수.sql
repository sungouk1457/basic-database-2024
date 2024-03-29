﻿-- 집계함수, GROUP BY
-- 고객이 주문한 도서의 총 판매액

SELECT SUM(saleprice) AS [총 매출]
  FROM Orders;

-- 김연아 고객이 주문한 도서의 총 판매액
SELECT *
  FROM Customer;
-- 김연아는 custid가 2번
SELECT sum(saleprice) AS '김연아고객 총판매액'
  FROM Orders
 WHERE custid = 2;

-- COUNT()는 *을 사용할 수 있음
-- 나머지 집계함수는 열(컬럼) 하나만 지정해서 사용할 것
SELECT COUNT(saleprice) AS [주문개수]
	 , SUM(saleprice) AS [총 판매액]
	 , AVG(saleprice) AS [판매액 평균]
	 , MIN(saleprice) AS [주문도서 최소금액]
	 , MAX(saleprice) AS [주문도서 최고금액]
 FROM Orders;

-- 출판사 중복제거 개수
SELECT COUNT(DISTINCT(publisher))
  FROM Book;

-- GROUP BY - 필요조건으로 그룹핑을 해서 결과(통계)를 내기위함
-- GROUP BY절에 들어있는 컬럼 외에는 SELECT문에 절대 쓸수 없음
-- 단, saleprice는 집계함수 안에 들어있으므로 예외
SELECT custid, SUM(saleprice) AS [판매액]
  FROM Orders
 GROUP BY custid;