-- 2��. ������ ��ȸ ����
/*

*/

-- 2-1.SELECT ���� (�⺻ : ���ϴ� ���̺��� Ʋ�� �÷��� ��ȸ�� ��)
SELECT �÷�1, �÷�2
FROM ���̺��;

SELECT employee_id, first_name, department_id
FROM emloyees;

SELECT *
FROM employees;

-- 2.2 SELECT ���� + ������(=���͸�) : Ư�� ���ǿ� �´� �����͸� ��ȸ
SELECT employee_id, first_name, department_id -- SELECT ��
FROM employees                  -- FROM ��
WHERE department_id = 100;      -- WHERE ������

-- �ڵ����� ���� : ���ϴ� ������ �� ���� �� ctrl+f7(=�ڵ� ������ ����)
-- TAB ���� ���!


-- 2.3.3 �� ������
-- ���� ��
-- ���� �� (p.7)

[���� 2-11] ���� King�� ����� ������ ��ȸ�Ͻÿ�
-- ����� ���� : ���, �̸�, ��, ��ȭ��ȣ, �̸���, �Ŵ���, �μ�, ���ʽ� ...
--      last name �� King���� �� (����, ũ��, �۴�)
SELECT employee_id ���, last_name ��, department_id �μ�
FROM employees
WHERE last_name = 'King' -- �빮�ڷ� �����ϴ� King
--WHERE last_name = 'king' -- �ҹ��ڷ� �����ϴ� King

-- ���ڿ� ���� : Ư�� ������ ���ڸ� ã�� ����
-- ex) ��ȭ��ȣ, �̸��� == 010-1234-5678 vs emailID@domain.com
-- SQL�� ��,�ҹ��ڸ� �������� ������, ���� �����ʹ� ������!
--      (��ɾ�)                   (���ڰ�)

[���� 2-12] �Ի����� 2004�� 1�� 1�� ������ ����� ����(=���, �̸�, �Ի���, �μ���ȣ, ...)
-- 2004�� 1�� 1�� ����, ó������ ~ 2003�� 12�� 31�� ����
-- ���� �� : �̻�, ����
select *
from employees
where hire_date < '01-jan-04';

-- ' ' : ���� ����ǥ�� 1) ���ڵ����� �� 2) �ð�/��¥ �����͸� ǥ���Ҷ� ���
-- " " : ū ����ǥ�� ??? �÷��� ��Ī�� ������ ��, ������ �ִ� �ܾ ������ ��

-- ������ �����ߴµ� �� ������ ������?
-- ���� ��¥ ����ϱ�
select SYSDATE
from dual
-- 1) Jan ��� 01, ��/��/�� ����
select employee_id ���, last_name ��, department_id �μ�, hire_date �Ի���
from employees
where hire_date < '04/01/01';










