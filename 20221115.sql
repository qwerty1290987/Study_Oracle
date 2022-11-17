-- 2.1 ������ ��ȸ(p.4)
-- SQL�� ��, �ҹ��ڸ� �������� ���� vs Java�� ��, �ҹ��ڸ� ������ ������!
-- ���̺��� ������ ���캸�� ��� : desc, describe

desc countries; -- countries��� ���̺��� ������ �Ʒ��� ����.
-- = describe countries;
/*
�̸�           ��?       ����           
------------ -------- ------------ 
COUNTRY_ID   NOT NULL CHAR(2)      : ������ �ڵ�
COUNTRY_NAME          VARCHAR2(40) : ������ �̸�
REGION_ID             NUMBER       : ������ ���Ե�(=�Ҽӵ�) ��� �ڵ�
*/

-- countries ���̺�κ��� *(=All) �÷�(��)�� ��ȸ�ϴ� ���
SELECT * FROM countries;

SELECT * country_id, country_name, region_id -- SELECT ��(=coause)
FROM countries; -- from ��

SELECT * country_id, country_name-- SELECT ��(=coause)
FROM countries; -- from ��

SELECT *        -- SELECT ��(=coause)
FROM countries; -- from ��

[����2-1] employees ���̺��� ������ ��ȸ�Ͻÿ�
DESC employees;

/*
�̸�             ��?       ����           
-------------- -------- ------------ 
EMPLOYEE_ID    NOT NULL NUMBER(6)    
FIRST_NAME              VARCHAR2(20) 
LAST_NAME      NOT NULL VARCHAR2(25) 
EMAIL          NOT NULL VARCHAR2(25) 
PHONE_NUMBER            VARCHAR2(20) 
HIRE_DATE      NOT NULL DATE         
JOB_ID         NOT NULL VARCHAR2(10) 
SALARY                  NUMBER(8,2)  :�� �޿�
COMMISSION_PCT          NUMBER(2,2)  : ����
MANAGER_ID              NUMBER(6)   :�Ŵ��� ���̵�
DEPARTMENT_ID           NUMBER(4)   :�ҼӺμ� ���̵�
*/

[���� 2-2] employees ���̺��� �����͸� ��� ��ȸ�Ͻÿ�
SELECT *
FROM employees;

SELECT employees_id, first_name, last_name, salary
FROM employees

[����2-2] employees ���̺��� �����͸� ��� ��ȸ������. vs ���, �̸�, ��, ���޿��� ��ȸ�Ͻÿ�
SELECT *
FROM employees;

SELECT employees_id





2.2 ������
��ü �����Ϳ��� Ư�� �� �����͸� �����Ͽ� ��ȸ�ϱ� ���ؼ� �������� ���
/*
SELECT �÷�1, �÷�2,...      (3) ���ϴ� �÷��� ��ȸ
FROM ���̺� �̸�             (1) ����
WHERE ������ ����;           (2) ����(=���͸�)
*/

[����2-3] 80�� �μ����� ��� ������ ��ȸ�Ͻÿ�
SELECT *
FROM employees
WHERE department_id = 80; -- ���� ������ : = (equal)

-- Ű������ TAB Ű�� ���� ������ ������ �����ϸ鼭 ���������� �������� ����
SELECT  *
FROM    employees
WHERE   department_id = 80;

-- �� ����� ctrl + F7 : �ڵ����� SQL ���������� ����
SELECT
    *
FROM
    employees
WHERE
    department_id = 80;

-- ��ü �μ��� ����. � �μ��ڵ带 ���� �ִ��� ��ȸ
DESC departments;

SELECT  *
FROM    departments; -- 27rows
