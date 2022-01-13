select
	 a.emp_no
	,a.emp_nm
	,b.dept_nm
	,a.co_cd
	,a.bs_cd
	,a.stat_bc
from hra100_cdj a
left join hra200_cdj b on a.dept_cd = b.dept_cd
where 1=1
	--and a.co_cd = @p_co_cd
	--andif a.bs_cd = @p_bs_cd endif
	--andif b.dept_nm like '%'+ @p_dept_nm +'%' endif --부서명
	--andif a.emp_nm like '%'+ @p_emp_nm +'%' endif -- 사번
	--andif a.stat_bc = @p_stat_bc endif -- 근무형태


select
	a.emp_no
	, a.emp_nm
	, a.nat_cd
	, a.stat_bc
	, a.co_cd
	, a.bs_cd
	, b.dept_nm
	, a.reg_no
	, a.bir_dt
	, a.high_bc
	, a.hire_dt
	, a.retr_bc
from HRA100_cdj a 
left join HRA200_cdj b on a.dept_cd = b.dept_cd   
 and a.emp_no	= @emp_no 
 and a.emp_nm LIKE '%' + @emp_nm + '%' 
 andif a.nat_cd = @nat_cd endif
 and a.stat_bc = @stat_bc
 and a.co_cd = @co_cd
 and a.bs_cd = @bs_cd
 andif a.dept_nm = @dept_nm endif
 	-- convert((varchar(10),bir_dt)) AS age


HRK110
HRA150

HRK110_cdj
HRA100_cdj




SELECT
convert(varchar(10),bir_dt )AS age
	,a.emp_no
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


FROM HRA100_cdj a
LEFT JOIN HRA200_cdj b ON a.dept_cd = b.dept_cd



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
	,FLOOR(CAST(DATEDIFF(DAY,a.bir_dt,GETDATE()) AS INTEGER)/365.2422) AS age
	,a.high_bc
	,a.hire_dt
	,a.retr_bc

FROM HRA100_cdj a
LEFT JOIN HRA200_cdj b ON a.dept_cd = b.dept_cd
WHERE 1=1
	--AND a.emp_no = @emp_no


INSERT INTO HRK110_cdj
	(
        emp_no
		,sq_no
		,school_bc
        ,school_nm
        ,major
        ,cid
        ,cdt
        ,mid
        ,mdt
	)
VALUES
	(
		@emp_no
		,@sq_no
		,@school_bc
        ,@school_nm
        ,@major
        ,@cid
        ,@cdt
        ,@mid
        ,@mdt
	)

update	a
set		a.cust_cd = @cust_cd, 
		a.mdt = getdate(), 
		a.mid = <$reg_id>, 
		a.po_dt = @po_dt, 
		a.po_fac = @po_fac, 
		a.po_no = @po_no
from	MMB100_cdj a
where	po_no = @po_no_old


DELETE a
FROM MMB100_cdj a
WHERE 1=1
	AND a.po_no = @po_no_old



INSERT INTO HRK110_skk
	(
	 emp_no
	,sq_no
	,school_bc
	,school_nm
	,major
	,cid
	,cdt
	,mid
	,mdt

	)
VALUES
	(
	 @emp_no
	,@sq_no
	,@school_bc
	,@school_nm
	,@major
	,<$reg_id>
    ,getdate()
    ,<$reg_id>
    ,getdate()

	)


update a
set  a.email     = @email
    ,a.addr1     = @addr1
    ,a.mobile    = @mobile
    ,a.home_tel  = @home_tel
    ,a.mid        = <$reg_id>
    ,a.mdt        = getdate()
from HRA150_cdj a
