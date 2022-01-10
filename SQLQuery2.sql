SELECT
 
a.po_no
,a.po_sq
,a.itm_id
,b.itm_cd
,b.itm_nm
,a.po_qty
,a.po_up
,a.po_amt
,a.dlv_dt
,a.in_qty
,a.rmks
,a.cid
,a.cdt
,a.mid
,a.mdt
FROM MMB150_cdj a
LEFT JOIN DMA100 b on a.itm_id = b.itm_id 
Left JOIN MMP100 c on a.po_up = c.po_up

SELECT
	a.po_no
	,a.itm_cd
	,a.itm_nm
	,a.po_qty
	,a.po_up
	,a.po_amt
	,a.div_dt
FROM MMB100_cdj a
LEFT JOIN BCV100_cdj b ON a.cust_cd = b.cust_cd
LEFT JOIN MMP100 c ON a.itm_cd = c.itm_cd
WHERE 1=1


mmb100_cdj



SELECT
	 a.po_sq
	,c.itm_cd
	,c.itm_nm
	,a.po_qty
	,a.po_up
	,a.po_amt
	,a.div_dt
FROM MMB150 a
LEFT JOIN BCV100_cdj b ON a.cust_cd = b.cust_cd
LEFT JOIN DMA100 c ON a.itm_cd = c.itm_cd
WHERE 1=1
	ANDIF a.po_dt = @po_dt ENDIF
	ANDIF a.po_no = @po_no ENDIF
	ANDIF b.cust_nm = @cust_nm ENDIF
	ANDIF a.cust_cd = @cust_cd ENDIF
	ANDIF c.fac_cd = @fac_cd ENDIF




select
 a.po_dt
,a.po_no
,b.cust_nm
,a.cust_cd
,a.po_fac

from MMB100_cdj a
left join BCV100 b on a.cust_cd = b.cust_cd
where 1=1
	AND a.po_no = @po_no