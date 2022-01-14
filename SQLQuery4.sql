
-------------------- [1] Start Open Set -----------------------------------------

-------------------- [1-1] WorkSet: hra100_cdj_f20 ----------------------

SELECT
	 a.emp_no
	,a.emp_nm
	,a.nat_cd
	,a.stat_bc
	,a.co_cd
	,a.bs_cd
	,b.dept_nm
	,a.dept_cd
	,a.reg_no
	,a.bir_dt
	,a.high_bc
	,a.hire_dt
	,a.retr_bc
	,FLOOR(CAST(DATEDIFF(DAY,a.bir_dt,GETDATE()) AS INTEGER)/365.2422) AS age -- 다른방법 있던데 못찾겠네 to_date()
FROM HRA100_cdj a
LEFT JOIN HRA200_cdj b ON a.dept_cd = b.dept_cd
WHERE 1=1
	AND a.emp_no = N'202007001'
