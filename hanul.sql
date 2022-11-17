-- SQL : Structured Query Language (����ȭ�� ���Ǿ�) ����
-- PL/SQL : ����Ŭ���� �����ϴ� �������� ���Ǿ�(procedural Language extension to SQL)
-- 2�� : SQL

-- 1. �������
-- �����ּ�
/*
���� �� �ּ�
*/
-- ��ɾ� ������ �����ݷ�(;)�� �ۼ��Ѵ�.
-- (�Ϲ�������) ��, �ҹ��ڴ� �������� �ʴ´�. ���̺� �̸�, �÷��� �̸���..9~10���뿡 �����ؼ� ���

/*2. SQL ���� : ���ҿ� ���� �Ʒ��� ���� ����
 (2-0). DQL : SELECT
 2-1. DML : SELECT, INSERT, UPDATE, DELETE(�����͸� ��ȸ, ����, �����ϴ� ��ɾ�)
-----------------------�����ڰ� ����ϴ� ���-------------------------------
 2-2. DDL : CREATE, ALTER, DROP(�����ͺ��̽� ��ü�� ����, ����, �����ϴ� ��ɾ�)
 2-3. DCL : GRANT, REVOKE (������ �ְų� ���� ��ɾ�)
-----------------------DBA�� ����ϴ� ���---------------------------------
*/

-- ȸ�� ������ �����ϴ� ���̺��� �����
-- id : ���� Ű(�����͸� �ĺ��ϴ� ���Ƿ� ���� Ű)
-- �̸�
-- ����
-- ��ȭ��ȣ
-- �ּ�
-- �̸���

-- ���̺� ��ü ����: DDL(Database Definition Language)
CREATE TABLE userTBL (
    id NUMBER, -- ȸ�� ���̵� : 1, 2, 3, 4, ...
    name VARCHAR(20),
    age NUMBER,
    phone CHAR(13),
    addr VARCHAR2(50),
    email VARCHAR2(30),
    reg_date DATE
);

CREATE TABLE itemTBL (
    id NUMBER(4), -- ��ǰ ���̵� : 0001, 0002, ...
    buyer NUMBER, -- 
    title VARCHAR2(100),
    qty NUMBER, -- ��ǰ ����
    price VARCHAR2(50), -- ��ǰ ����
    sell_date DATE -- �Ǹ���
);

-- NUMBER : ���� Ÿ��/�Ҽ���
-- CHAR : ���� ���� (ex. �ֹι�ȣ)
-- VARCHAR2 : ���� ���� va VARCHAR : ����Ŭ���� �ٽ� � �������� �����ϱ����� ������ ������� �ʵ��� ����
-- NCHAR, NVARCHAR : National (�ٱ���, ��� �ƴ� �ѱ���/�߱���/�Ϻ���/�ƶ���,...�� ���� ��� ����)
-- DATE : (�ð�)��¥  va TIMEZONE, TIMESTAMP : �и���������� ����(ex. ���Ա��)
-------------------------------------------------------------------------------------------------
-- LOB(Large object), CLOB, BLOB : �̹���, ������� �뷮�� ū ���̳ʸ� ���ϵ��� �����ϴ� Ÿ��
-- BFLLE : �׶����Ʈ����..

-- 2. ���̺� ������ ���� : DML(Datavase Manipulation Language, �����ͺ��̽� ���۾��)
-- 2.1 ���ο� �����͸� ����/����
-- 2.2 

INSERT INTO userTBL( id, name, age, phone, addr, email, reg_date)
VALUES(1, 'ȫ�浿', 20, '010-1234-5678', 'gwangju, seo-gu', 'hong@naver.com', SYSDATE);

INSERT INTO userTBL( id, name, age, phone, addr, email, reg_date)
VALUES(2, '��浿', 21, '010-1234-5670', 'gwangju, seo-gu', 'hong1@naver.com', SYSDATE);

INSERT INTO userTBL( id, name, age, phone, addr, email, reg_date)
VALUES(3, '�ֱ浿', 22, '010-1234-5671', 'gwangju, seo-gu', 'hong2@naver.com', SYSDATE);

INSERT INTO userTBL( id, name, age, phone, addr, email, reg_date)
VALUES(4, '�ڱ浿', 23, '010-1234-5672', 'gwangju, seo-gu', 'hong3@naver.com', SYSDATE);

INSERT INTO userTBL( id, name, age, phone, addr, email, reg_date)
VALUES(5, '�̱浿', 24, '010-1234-5673', 'gwangju, seo-gu', 'hong4@naver.com', SYSDATE);

INSERT INTO userTBL( id, name, age, phone, addr, email, reg_date)
VALUES(6, '�ѱ浿', 25, '010-1234-5674', 'gwangju, seo-gu', 'hong5@naver.com', SYSDATE);

INSERT INTO userTBL( id, name, age, phone, addr, email, reg_date)
VALUES(7, '���浿', 26, '010-1234-5675', 'gwangju, seo-gu', 'hong6@naver.com', SYSDATE);

-- ITEM DATA ���
-- ������ �������� ������ ���̺� ���� �״�� ���Ѽ� �Է�!
SELECT SYSDATE
FROM dual; -- ���� ��¥ ��ȸ

INSERT INTO itemTBL
VALUES (0001, 1, '�������� ������ 1�ڽ�', 100, 15000, TO_DATE('2022/10/15', 'RRRR/MM/DD HH:MI:SS'));
INSERT INTO itemTBL
VALUES (0002, 2, '�������� ������ 1�ڽ�', 10, 20000, TO_DATE('2022/10/15', 'RRRR/MM/DD HH:MI:SS'));
INSERT INTO itemTBL
VALUES (0003, 3, 'ķ���� �Դ� �����, �̺����� ����', 20, 30000, TO_DATE('2022/10/15', 'RRRR/MM/DD HH:MI:SS'));

-- 3. ���̺� ���� ������ ��ȸ : SELECT
SELECT * FROM userTBL;

-- 4. ���̺� ���� ������ �� ���ǿ� �´� �����͸� ��ȸ : SELECT
SELECT * -- SELECT ��
FROM userTBL
WHERE age = 20; -- = : ���� (�� ������)

SELECT *
FROM
-- 5. ���̺��� ����(=����, ��)�� ��ȸ : desc, describe
DESC itemTBL;

-- 6. ��ǰ ���̺� ��ǰ �����͸� ����

INSERT INTO itemTBL
VALUES (0001, 1, 'TV ����� 30W ����Ŀ', 1, 20000, SYSDATE); -- SYSDATE �Լ� : �ý����� ��¥�� �Է�����
INSERT INTO itemTBL
VALUES (0002, 2, 'JAVA �����ڿ� ��ǻ��', 1, 2000000, SYSDATE);
INSERT INTO itemTBL
VALUES (0003, 3, '�߱ٽ� ������ ��𽽸���', 1, 10000, SYSDATE);
INSERT INTO itemTBL
VALUES (0004, 4, '��ǰ���� �Կ��� DSLRī�޶�', 1, 1200000, SYSDATE);
INSERT INTO itemTBL
VALUES (0005, 5, '��Ʈ��, �º� ������ ����', 1, 10000, SYSDATE);

-- 7. ��ǰ ���̺� ��ȸ
SELECT ID, BUYER, PRICE
FROM itemTBL;

-- 8. �����ͺ��̽� ��ü ����
-- DROP TABLE ���̺��;     -- �����ͺ��̽� ����(= �����͵� ���ư�)
-- DELETE ���̺�� WHERE ����;        -- ���ǿ� �´� �����͸� ����(= ���̺��� ����)
-- TRUNCATE TABLE ���̺��      -- ���̺��� ����, �����ʹ� ��� ����

-- ex)
-- DROP TABLE userTBL;
-- DROP TABLE itemTBL;

SELECT *
FROM userTBL;

-- ���� �����͸� ���������� ���� ��ǻ�� ����ҿ� �����ϴ� ���
COMMIT;



