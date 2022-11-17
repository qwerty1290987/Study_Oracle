-- 2.1 데이터 조회(p.4)
-- SQL은 대, 소문자를 구분하지 않음 vs Java는 대, 소문자를 엄격히 구분함!
-- 테이블의 구조를 살펴보는 명령 : desc, describe

desc countries; -- countries라는 테이블의 구조는 아래와 같음.
-- = describe countries;
/*
이름           널?       유형           
------------ -------- ------------ 
COUNTRY_ID   NOT NULL CHAR(2)      : 국가의 코드
COUNTRY_NAME          VARCHAR2(40) : 국가의 이름
REGION_ID             NUMBER       : 국가가 포함된(=소속된) 대륙 코드
*/

-- countries 테이블로부터 *(=All) 컬럼(열)을 조회하는 명령
SELECT * FROM countries;

SELECT * country_id, country_name, region_id -- SELECT 절(=coause)
FROM countries; -- from 절

SELECT * country_id, country_name-- SELECT 절(=coause)
FROM countries; -- from 절

SELECT *        -- SELECT 절(=coause)
FROM countries; -- from 절

[예제2-1] employees 테이블의 구조를 조회하시오
DESC employees;

/*
이름             널?       유형           
-------------- -------- ------------ 
EMPLOYEE_ID    NOT NULL NUMBER(6)    
FIRST_NAME              VARCHAR2(20) 
LAST_NAME      NOT NULL VARCHAR2(25) 
EMAIL          NOT NULL VARCHAR2(25) 
PHONE_NUMBER            VARCHAR2(20) 
HIRE_DATE      NOT NULL DATE         
JOB_ID         NOT NULL VARCHAR2(10) 
SALARY                  NUMBER(8,2)  :월 급여
COMMISSION_PCT          NUMBER(2,2)  : 상여율
MANAGER_ID              NUMBER(6)   :매니저 아이디
DEPARTMENT_ID           NUMBER(4)   :소속부서 아이디
*/

[예제 2-2] employees 테이블의 데이터를 모두 조회하시오
SELECT *
FROM employees;

SELECT employees_id, first_name, last_name, salary
FROM employees

[예제2-2] employees 테이블의 데이터를 모두 조회사히오. vs 사번, 이름, 성, 월급여를 조회하시오
SELECT *
FROM employees;

SELECT employees_id





2.2 조건절
전체 데이터에서 특정 행 데이터를 제한하여 조회하기 위해서 조건절을 사용
/*
SELECT 컬럼1, 컬럼2,...      (3) 원하는 컬럼만 조회
FROM 테이블 이름             (1) 실행
WHERE 조건을 나열;           (2) 실행(=필터링)
*/

[예제2-3] 80번 부서원의 사원 정보를 조회하시오
SELECT *
FROM employees
WHERE department_id = 80; -- 같다 연산자 : = (equal)

-- 키보드의 TAB 키를 눌러 일정한 간격을 유지하면서 포맷형식을 수동으로 적용
SELECT  *
FROM    employees
WHERE   department_id = 80;

-- 블럭 씌우고 ctrl + F7 : 자동으로 SQL 포맷형식을 적용
SELECT
    *
FROM
    employees
WHERE
    department_id = 80;

-- 전체 부서의 개수. 어떤 부서코드를 갖고 있는지 조회
DESC departments;

SELECT  *
FROM    departments; -- 27rows
