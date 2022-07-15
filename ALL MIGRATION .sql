-- c_bankstatement
ALTER TABLE IF EXISTS adempiere.c_bankstatement ADD COLUMN IF NOT EXISTS c_project_id NUMERIC(10,0) DEFAULT NULL::numeric;
-- c_bankstatementline
ALTER TABLE IF EXISTS adempiere.c_bankstatementline ADD COLUMN IF NOT EXISTS c_project_id NUMERIC(10,0) DEFAULT NULL::numeric;
-- c_bpartner_location
ALTER TABLE IF EXISTS adempiere.c_bpartner_location ADD COLUMN IF NOT EXISTS name CHARACTER VARYING(300) NOT NULL DEFAULT '.'::character varying;
-- c_dunning_header_v
ALTER TABLE IF EXISTS adempiere.c_dunning_header_v ADD COLUMN IF NOT EXISTS c_bpartner_location_name CHARACTER VARYING(300);
-- c_dunning_header_vt
ALTER TABLE IF EXISTS adempiere.c_dunning_header_vt ADD COLUMN IF NOT EXISTS c_bpartner_location_name CHARACTER VARYING(300);
--  c_invoice
ALTER TABLE IF EXISTS adempiere.c_invoice ADD COLUMN IF NOT EXISTS approveddiscby CHARACTER VARYING(255);
--  c_invoice_header_v
ALTER TABLE IF EXISTS adempiere.c_invoice_header_v ADD COLUMN IF NOT EXISTS bp_location_name CHARACTER VARYING(300);
-- c_invoice_header_vt
ALTER TABLE IF EXISTS adempiere.c_invoice_header_vt ADD COLUMN IF NOT EXISTS bp_location_name CHARACTER VARYING(300);
-- c_invoicetax
ALTER TABLE IF EXISTS adempiere.c_invoicetax ADD COLUMN IF NOT EXISTS taxnbr CHARACTER VARYING(22) NULL DEFAULT NULL::character varying;
-- c_order_header_v
ALTER TABLE IF EXISTS adempiere.c_order_header_v ADD COLUMN IF NOT EXISTS bp_location_name CHARACTER VARYING(300);
ALTER TABLE IF EXISTS adempiere.c_order_header_v ADD COLUMN IF NOT EXISTS bill_bp_location_name CHARACTER VARYING(300);
-- c_order_header_vt
ALTER TABLE IF EXISTS adempiere.c_order_header_vt ADD COLUMN IF NOT EXISTS bp_location_name CHARACTER VARYING(300);
ALTER TABLE IF EXISTS adempiere.c_order_header_vt ADD COLUMN IF NOT EXISTS bill_bp_location_name CHARACTER VARYING(300);
-- c_project_header_v
ALTER TABLE IF EXISTS adempiere.c_project_header_v ADD COLUMN IF NOT EXISTS c_bp_location_name CHARACTER VARYING(300);
-- c_project_header_vt
ALTER TABLE IF EXISTS adempiere.c_project_header_vt ADD COLUMN IF NOT EXISTS c_bp_location_name CHARACTER VARYING(300);
-- isy_timesheet
CREATE TABLE IF NOT EXISTS adempiere.isy_timesheet (
    ad_client_id NUMERIC(10,0) NOT NULL,
    ad_org_id NUMERIC(10,0) NOT NULL,
    ad_orgtrx_id NUMERIC(10,0) NULL DEFAULT NULL::numeric,
    c_activity_id NUMERIC(10,0) NULL DEFAULT NULL::numeric,
    c_bpartner_id NUMERIC(10,0) NOT NULL,
    c_campaign_id NUMERIC(10,0) NULL DEFAULT NULL::numeric,
    c_project_id NUMERIC(10,0) NULL DEFAULT NULL::numeric,
    created TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT statement_timestamp(),
    createdby NUMERIC,
    description CHARACTER VARYING(255) NULL DEFAULT NULL::character varying,
    endtime TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT statement_timestamp(),
    isactive CHARACTER(1) DEFAULT 'Y'::bpchar,
    isy_timesheet_id NUMERIC(10,0) NOT NULL NOT NULL DEFAULT statement_timestamp(),
    starttime TIMESTAMP WITHOUT TIME ZONE,
    status CHARACTER VARYING(60),
    updated TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT statement_timestamp(),
    updatedby NUMERIC(10,0) NOT NULL,
    user1_id NUMERIC(10,0) NOT NULL,
    user2_id NUMERIC(10,0) NOT NULL,
);
-- m_inout_header_v
ALTER TABLE IF EXISTS adempiere.m_inout_header_v ALTER COLUMN IF NOT EXISTS c_bp_location_name CHARACTER VARYING(300);
-- m_inout_header_vt
ALTER TABLE IF EXISTS adempiere.m_inout_header_vt ADD COLUMN IF NOT EXISTS c_bp_location_name CHARACTER VARYING(300);
-- m_product
ALTER TABLE IF EXISTS adempiere.m_product ADD COLUMN IF NOT EXISTS incentivebu CHARACTER VARYING(255);
-- m_product_stock_v
ALTER TABLE IF EXISTS adempiere.m_product_stock_v ADD COLUMN IF NOT EXISTS movementqty NUMERIC NULL;
-- m_rma
ALTER TABLE IF EXISTS adempiere.m_rma ADD COLUMN IF NOT EXISTS c_activity_id NUMERIC(10,0) NULL DEFAULT NULL::numeric;
ALTER TABLE IF EXISTS adempiere.m_rma ADD COLUMN IF NOT EXISTS c_project_id NUMERIC(10,0) NULL DEFAULT NULL::numeric;
-- rv_bpartner
ALTER TABLE IF EXISTS adempiere.rv_bpartner ADD COLUMN IF NOT EXISTS c_bp_location_name CHARACTER VARYING(300);
-- rv_c_invoice
ALTER TABLE IF EXISTS adempiere.rv_c_invoice ADD COLUMN IF NOT EXISTS bp_location_name CHARACTER VARYING(300);
ALTER TABLE IF EXISTS adempiere.rv_c_invoice ADD COLUMN IF NOT EXISTS c_bp_location_userid CHARACTER VARYING(512);
-- rv_fact_acct_isy_385
CREATE TABLE IF NOT EXISTS adempiere.rv_fact_acct_isy_385 (
    ad_client_id NUMERIC(10,0),
    ad_org_id NUMERIC(10,0),
    isactive character(1),
    created TIMESTAMP WITHOUT TIME ZONE DEFAULT statement_timestamp(),
    createdby NUMERIC(10,0),
    updated TIMESTAMP WITHOUT TIME ZONE DEFAULT statement_timestamp(),
    updatedby NUMERIC(10,0),
    c_acctschema_id NUMERIC(10,0),
    ad_orgtrx_id NUMERIC(10,0),
    dateacct TIMESTAMP WITHOUT TIME ZONE DEFAULT statement_timestamp(),
    datetrx TIMESTAMP WITHOUT TIME ZONE DEFAULT statement_timestamp(),
    c_periode_id NUMERIC(10,0),
    amtacctdr NUMERIC,
    amtacctcr NUMERIC,
    m_product_id NUMERIC(10,0),
    c_bpartner_id NUMERIC(10,0),
    c_project_id NUMERIC(10,0),
    c_order_id NUMERIC(10,0),
    m_rma_id NUMERIC(10,0),
    description CHARACTER VARYING(255),
    accountvalue CHARACTER VARYING(40),
    account_id NUMERIC(10,0),
    ad_table_id NUMERIC(10,0),
    gl_category_id NUMERIC(10,0),
    amtacct NUMERIC,
    documentno CHARACTER VARYING(30),
);
-- rv_inoutdetails
ALTER TABLE IF EXISTS adempiere.rv_inoutdetails ADD COLUMN IF NOT EXISTS po_description CHARACTER VARYING(3999) NOT NULL;
-- rv_orderdetail
ALTER TABLE IF EXISTS adempiere.rv_orderdetail ADD COLUMN IF NOT EXISTS enteredamt NUMERIC NOT NULL;
ALTER TABLE IF EXISTS adempiere.rv_orderdetail ADD COLUMN IF NOT EXISTS orderedamt NUMERIC NOT NULL;
ALTER TABLE IF EXISTS adempiere.rv_orderdetail ADD COLUMN IF NOT EXISTS deliveredamt NUMERIC NOT NULL;
ALTER TABLE IF EXISTS adempiere.rv_orderdetail ADD COLUMN IF NOT EXISTS invoicedamt NUMERIC NOT NULL;
ALTER TABLE IF EXISTS adempiere.rv_orderdetail ADD COLUMN IF NOT EXISTS amttodeliver NUMERIC NOT NULL;
ALTER TABLE IF EXISTS adempiere.rv_orderdetail ADD COLUMN IF NOT EXISTS convertedenteredamt NUMERIC NOT NULL;
ALTER TABLE IF EXISTS adempiere.rv_orderdetail ADD COLUMN IF NOT EXISTS convertedorderedamt NUMERIC NOT NULL;
ALTER TABLE IF EXISTS adempiere.rv_orderdetail ADD COLUMN IF NOT EXISTS converteddeliveredamt NUMERIC NOT NULL;
ALTER TABLE IF EXISTS adempiere.rv_orderdetail ADD COLUMN IF NOT EXISTS convertedinvoicedamt NUMERIC NOT NULL;
ALTER TABLE IF EXISTS adempiere.rv_orderdetail ADD COLUMN IF NOT EXISTS convertedamttodeliver NUMERIC NOT NULL;
ALTER TABLE IF EXISTS adempiere.rv_orderdetail ADD COLUMN IF NOT EXISTS convertedamttoinvoice NUMERIC NOT NULL;
ALTER TABLE IF EXISTS adempiere.rv_orderdetail ADD COLUMN IF NOT EXISTS parent_org_id NUMERIC(10,0) NOT NULL;
-- rv_payment
ALTER TABLE IF EXISTS adempiere.rv_payment ADD COLUMN IF NOT EXISTS giro_chasing NUMERIC(10,0) NOT NULL;   
