--
SDD100 -- 매출정보 테이블 기준성이 큰 것들을 100번이라고 함 마스터
SDD150 -- 매출상세정보 테이블 디테일 테이블
--cust_cd,itm_id
--sal_amt

--select sal_qty,sal_amt,DATEPART(yy,GETDATE())as년 from SDD150

SELECT
	LEFT(CONVERT (DATE,a.sal_dt,120),7) as sal_dt
	,SUM(b.sal_qty)as sal_qty
	,SUM(b.sal_amt)as sal_amt
FROM SDD100 a
LEFT JOIN SDD150 b ON a.sal_no =b.sal_no

WHERE 1=1

GROUP BY LEFT(CONVERT (DATE,a.sal_dt,120),7)

--select sal_qty,sal_amt,cust_cd from SDD150 where cust_cd='품목ID'--조인을 해야하는거 같은데 

--select sal_qty,sal_amt from SDD150 where DATE(cdt)

-- and 는 둘다 참일 경우에 값이 들어 오며
-- or은 둘중 하나가 참이면 값이 들어온다.



SELECT

FROM

WHERE