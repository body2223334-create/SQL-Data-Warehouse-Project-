/*
==============================================
DDL Script: Create Bronze Table 
==============================================
Script Purpose: 
	This script creates tables for bronze layer .
Note: 
	You will find tables that you just added in the Object Explorer
 */

Create Table bronze.crm_cust_info (
	cst_id INT ,
	cst_key NVARCHAR(50) ,
	cst_firstname NVARCHAR(50) ,
	cst_lastname NVARCHAR(50) ,
	cst_materials_status NVARCHAR(50) ,
	cst_gndr NVARCHAR(50) ,
	cst_create_date DATE 
); 

Create Table bronze.crm_prd_info (
	prd_id INT ,
	prd_key NVARCHAR(50) ,
	prd_nm NVARCHAR(50) ,
	prd_cost INT ,
	prd_line NVARCHAR(50) ,
	prd_start_dt DATETIME ,
	prd_end_dt DATETIME 
);

Create Table bronze.crm_sales_details (
	sls_ord_num NVARCHAR(50) ,
	sls_prd_key NVARCHAR(50) ,
	sls_cust_id INT ,
	sls_orders_dt INT ,
	sls_ship_dt INT ,
	sls_due_dt INT ,
	sls_sales INT ,
	sls_quantity INT ,
	sls_price INT 
);

Create Table bronze.erp_cust_az12 (
	cid    NVARCHAR(50) ,
	bdate  DATE ,
	gen    NVARCHAR(50) 
);

Create Table bronze.erp_loc_a101 (
	cid   NVARCHAR(50) ,
	cntry NVARCHAR(50) 
);

Create Table bronze.erp_px_cat_g1v2 (
	id          NVARCHAR(50) ,
	cat         NVARCHAR(50) ,
	subcat      NVARCHAR(50) ,
	maintenance NVARCHAR(50) 
);
