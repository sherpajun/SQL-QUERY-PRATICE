--
SDD100 -- �������� ���̺� ���ؼ��� ū �͵��� 100���̶�� �� ������
SDD150 -- ��������� ���̺� ������ ���̺�
--cust_cd,itm_id
--sal_amt

--select sal_qty,sal_amt,DATEPART(yy,GETDATE())as�� from SDD150

SELECT
	LEFT(CONVERT (DATE,a.sal_dt,120),7) as sal_dt
	,SUM(b.sal_qty)as sal_qty
	,SUM(b.sal_amt)as sal_amt
FROM SDD100 a
LEFT JOIN SDD150 b ON a.sal_no =b.sal_no

WHERE 1=1

GROUP BY LEFT(CONVERT (DATE,a.sal_dt,120),7)

--select sal_qty,sal_amt,cust_cd from SDD150 where cust_cd='ǰ��ID'--������ �ؾ��ϴ°� ������ 

--select sal_qty,sal_amt from SDD150 where DATE(cdt)

-- and �� �Ѵ� ���� ��쿡 ���� ��� ����
-- or�� ���� �ϳ��� ���̸� ���� ���´�.



SELECT

FROM

WHERE