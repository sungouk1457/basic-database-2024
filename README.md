# basic-database-2024
IoT 개발자과정 SQLServer 학습 리포지토리

## 1일차
- MS SQL Server 설치 : https://www.microsoft.com/ko-kr/sql-server/sql-server-downloads 최신버전
    - DBMS 엔진 - 개발자 버전
        - iso 다운로드 후 설치 추춴
        - SQL Server에 대한 Azure 확장 비활성화 후 진행
        - 데이터베이스 엔진 구성부터 중요
             - Windows인증모드로 하면 외부에서 접근불가
             - 혼합모드(sa)에한 암호를 지정 / mssql_p@ss(8자이상/대소문자구분/특수문자1자이상 포함)
             - 데이터루트 디렉토리는 변경
    - 개발툴 설치
        - SSMS(Sql Server Management Studio) DB에 접급,여러개발 작업

- 데이터베이스 개념
    - 데이터를 보관,관리,서비스하는 시스템
    - Data, Information,Knowlege 개념
    - DBMS > Database > Data(Model)

- DB언어
    - SQL(Struct Query Language) : 구조화된 질의 언어
        - DDL(Data Definitiomn Lang) - 데이터베이스, 테이블, 인덱스 생성
        - DML(Data Manipulation Lang) - 검색(select), 삽입(insert), 수정(update), 삭제(delete) 등 기능
        - DCL(Data Control Lang) - 권한, 트랜스액션 부여/제거 기능

- SQL 기본 학습
    - SSMS 실행

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