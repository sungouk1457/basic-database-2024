--1. 회원 테이블에서 이메일, 모바일, 이름, 주소 순으로 나오도록 검색하시오.
--(결과는 아래와 동일하게 나와야 하며, 전체 행의 개수는 31개입니다)
SELECT Email
	 , Mobile
	 , names
	 , Addr
  FROM membertbl
 ORDER BY Addr DESC,Email ASC

--2. 함수를 사용하여 아래와 같은 결과가 나오도록 쿼리를 작성하시오.(전채 행의 개수는 59개입니다)
SELECT b.Names AS '도서명'
	 , b.Author AS '저자'
	 , b.ISBN
	 , FORMAT(b.Price,'#,#') AS '정가'
  FROM bookstbl AS b
 ORDER BY Price DESC
--3. 다음과 같은 결과가 나오도록 SQL 문을 작성하시오.(책을 한번도 빌린적이 없는 회원을 뜻합니다)
SELECT m.Names AS '회원명'
	 , m.Levels AS '회원등급'
	 , m.Addr AS '회원주소'
	 , r.rentalDate AS '대여일'
  FROM membertbl AS m,rentaltbl AS r
 WHERE m.memberIdx = r.memberIdx 
 ORDER BY m.Names ASC
--4. 다음과 같은 결과가 나오도록 SQL 문을 작성하시오.

--5. 다음과 같은 결과가 나오도록 SQL 문을 작성하시오.

