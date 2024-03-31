# basic-database-2024
IoT 개발자과정 SQLServer 학습 리포지토리

## 1일차
- MS SQL Server 설치 : https://www.microsoft.com/ko-kr/sql-server/sql-server-downloads 최신버전
    - DBMS 엔진 - 개발자 버전
        - iso 다운로드 후 설치 추춴
        - SQL Server에 대한 Azure 확장 비활성화 후 진행

        ![기능선택](https://github.com/sungouk1457/basic-database-2024/blob/main/images/db001.png)

        - 데이터베이스 엔진 구성부터 중요
             - Windows인증모드로 하면 외부에서 접근불가
             - 혼합모드(sa)에한 암호를 지정 / mssql_p@ss(8자이상/대소문자구분/특수문자1자이상 포함)
             - 데이터루트 디렉토리는 변경
    - [개발툴 설치](https://learn.microsoft.com/ko-kr/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16)
        - SSMS(Sql Server Management Studio) DB에 접급,여러개발 작업
        

- 데이터베이스 개념
    - 데이터를 보관,관리,서비스하는 시스템
    - Data, Information,Knowlege 개념
    - DBMS > Database > Data(Model)

- DB언어
    - SQL(Struct Query Language) : 구조화된 질의 언어
        - DDL(Data Definitiomn Lang) - 데이터베이스, 테이블, 인덱스 생성, CREATE, ALTER, DROP
        - DML(Data Manipulation Lang) - 검색(select), 삽입(insert), 수정(update), 삭제(delete) 등 기능
        - DCL(Data Control Lang) - 보안,권한 부여/제거 기능, GRANT, REMOVE
        - TCL(Transaction Control Lang) - 트랜스액션(트랜잭션) 제어하는 기능 COMMIT, ROLLBACK, 원래는 DCL의 일부, 기능이 특이해서 TCL로 분리

- SQL 기본 학습
    - SSMS 실행

    ![SSMS로그인](https://github.com/sungouk1457/basic-database-2024/blob/main/images/db002.png)
    ![SSMS로그인](https://github.com/sungouk1457/basic-database-2024/blob/main/images/db003.png)

- DML 학습
    - SQL 명령어 키워드 : SELECT, INSERT, UPDATE, DELETE
    - IT개발 표현언어 : Request, Create, Update, Delete(CRUD로 부름. CRU개발 뜻은 INSERT, UPDATE, SELECT를 할 수있는 기능을 개발)
    - SLEECT
    ```sql
    SELECT [ALL | DISTINCT] 속성이름(들)
      FROM 테이블 이름(들)
    [WHERE 검색조건(들)]
    [GROUP BY 속성이름(들)]
    [HAVING 검색조건(들)]
    [ORDER BY 검색조건(들) [ASC | DESC]]
    ```
    - SELECT 문 학습
        - 기본, 조건검색 학습 중

## 2일차
- Database 학습
    - DB 개발시 사용할 수 있는 툴
        - SSMS(기본)
        - Visual Studio - 아무런 설치 없이 개발 가능
        - Visual Studio Code - SQL Server(mssql) 플러그인 설치하고 개발
        - SercerName(HostName) - [내컴퓨터이름|내네트워크주소|127.0.0.1(LoopBack IP)|localhost(LoopBack URL)] 중에서 선호하는거 아무거나
    - 관계 데이터 모델
        - 릴레이션 : 행과 열로 구성된 테이블(관계 데이터모델 에서만)
            - 행(튜플), 열(속성), 스키마, 인스턴스 용어
        - 매핑되는 이름 테이블(실제 DB)
            - 행(레코드), 열(컬럼,필드),내포(필드명), 외연(데이터)
        - 차수(degree) - 속성의 개수
        - 카디날리티(cardinality) - 튜플의 수

        - 릴레이션 특징
            1. 속성은 단일값을 가짐(책이름이 여러개 들어가면 안됨)
            2. 속성은 다른 이름으로 구성(책이름이라는 속성이 두번있으면 안됨)
            3. 속성의 값은 정의된 도메인값만 가짐(대학교 학년에 5학년이 있으면 안됨)
            4. 속성의 순서는 상관없음
            5. 릴레이션내 중복된 튜플 허용안함(같은 책 정보를 두번 넣을 수 없음)
            6. 튜플 순서는 상관없음

        - 관계 데이터 모델은 아래의 요소로 구성됨
            - 릴레이션(Relation)
            - 제약조건(Contraints)
            - 관계대수(Relational algebra)
- DML 학습
    - SELECT문
        - 복합조건, 정렬
        - 집계함수와 Group By
            - SUM(총합), AVG(평균), COUNT(개수), MIN(최소), MAX(최대값)
            - 집계함수 외 일반 컬럼은 GROUP BY 절에 속한 컬럼만 SELECT문에 사용가능
            - HAVING은 집계함수의 필터로 GROUP BY 뒤에 작성. WHERE절과 필터링이 다르다.
        - 두개 이상의 테이블 질의(Query)
            - 관계형 DB에서 가장 중요한 기법중 하나 : JOIN!
            - INNER JOIN(내부 조인)
            - LEFT|RIGHT OUTER JOIN(외부 조인) - 어느 테이블이 기준인지에 따라서 결과가 상이함
