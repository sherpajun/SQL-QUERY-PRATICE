SELECT 
		a.cust_cd
		,a.cust_nm
		,a.cust_bc
		,a.use_yn
		,a.co_cd
		,a.cid
		,a.cdt
		,a.mid
		,a.mdt

FROM BCV100_cdj a
LEFT JOIN SCU100 b ON a.cid = b.reg_id

--BCA200

--main_cd + sub_cd =base_cd
--��з��ڵ� + �Һз��ڵ� = �����ڵ�

SCU100

SELECT 
		a.cust_cd
		,a.cust_nm
		,a.cust_bc
		,a.use_yn
		,a.co_cd
		,a.cid
		,b.nm AS dnm
		,a.cdt
		,a.mid
		,c.nm AS mnm
		,a.mdt

FROM BCV100_cdj a
LEFT JOIN SCU100 b ON a.cid = b.reg_id
LEFT JOIN SCU100 c ON a.mid = c.reg_id

