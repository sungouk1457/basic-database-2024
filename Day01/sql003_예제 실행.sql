-- å�߿��� '�౸�� ����'��� ������ ���ǻ��  ������ �˰� �;�
-- dbo�� DataBase Owner(������ �н�)
-- DML(4����)�� SELECT (��ȸ)
SELECT publisher, price
  FROM Book
 WHERE bookname = '�౸�� ����';
/*
- SQL������ equal�����ڿ� == ������,������ =
- SQL������ ���ڿ��� "������,������ '
- SQL������ ��ҹ��� ���о���, ������ Ű����� �빮�ڷ� ����Ұ�
- SQL������ ;�� �ʼ��� �ƴ�, ������ �߿��� ���׿����� ������ ����� ��
*/

--�迬�� ���� ��ȭ��ȣ�� ã���ÿ�
--1 step
SELECT * -- *:ALL�̶�� ȣĪ
  FROM Customer

--2 step(1 step���� ����)
SELECT *
  FROM Customer
 WHERE [name] = '�迬��';

--3 step(2 step���� ����)
SELECT [name],phone
  FROM Customer
 WHERE [name] = '�迬��';