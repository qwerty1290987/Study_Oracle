-- 2장. 데이터 조회 구분
/*

*/

-- 2-1.SELECT 구분 (기본 : 원하는 테이블의 틀정 컬럼을 조회할 때)
SELECT 컬럼1, 컬럼2
FROM 테이블명;

SELECT employee_id, first_name, department_id
FROM emloyees;

SELECT *
FROM employees;

-- 2.2 SELECT 구문 + 조건절(=필터링) : 특정 조건에 맞는 데이터만 조회
SELECT employee_id, first_name, department_id -- SELECT 절
FROM employees                  -- FROM 절
WHERE department_id = 100;      -- WHERE 조건절

-- 자동서식 적용 : 원하는 쿼리를 블럭 씌운 후 ctrl+f7(=자동 서식이 적용)
-- TAB 자주 사용!


-- 2.3.3 비교 연산자
-- 숫자 비교
-- 문자 비교 (p.7)

[예제 2-11] 성이 King인 사원의 정보를 조회하시오
-- 사원의 정보 : 사번, 이름, 성, 전화번호, 이메일, 매니저, 부서, 보너스 ...
--      last name 이 King인지 비교 (같다, 크다, 작다)
SELECT employee_id 사번, last_name 성, department_id 부서
FROM employees
WHERE last_name = 'King' -- 대문자로 시작하는 King
--WHERE last_name = 'king' -- 소문자로 시작하는 King

-- 문자열 패턴 : 특정 조건의 문자를 찾는 과정
-- ex) 전화번호, 이메일 == 010-1234-5678 vs emailID@domain.com
-- SQL은 대,소문자를 구분하지 않으나, 문자 데이터는 구분함!
--      (명령어)                   (문자값)

[예제 2-12] 입사일이 2004년 1월 1일 이전인 사원의 정보(=사번, 이름, 입사일, 부서번호, ...)
-- 2004년 1월 1일 이전, 처음부터 ~ 2003년 12월 31일 까지
-- 범위 비교 : 이상, 이하
select *
from employees
where hire_date < '01-jan-04';

-- ' ' : 작은 따옴표는 1) 문자데이터 와 2) 시간/날짜 데이터를 표기할때 사용
-- " " : 큰 따옴표는 ??? 컬럼의 별칭을 지정할 때, 공백이 있는 단어를 조합할 때

-- 교재대로 실행했는데 왜 오류가 나는지?
-- 오늘 날짜 출력하기
select SYSDATE
from dual
-- 1) Jan 대신 01, 년/월/일 순서
select employee_id 사번, last_name 성, department_id 부서, hire_date 입사일
from employees
where hire_date < '04/01/01';










