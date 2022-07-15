-- c_bankstatement
ALTER TABLE IF EXISTS adempiere.c_bankstatement ADD COLUMN IF NOT EXISTS c_project_id NUMERIC(10,0) NULL DEFAULT NULL:numeric;
-- c_bankstatementline
ALTER TABLE IF EXISTS adempiere.c_bankstatementline ADD COLUMN IF NOT EXISTS c_project_id NUMERIC(10,0) NULL DEFAULT NULL:numeric;
-- c_bpartner_location
ALTER TABLE IF EXISTS adempiere.c_bpartner_location ADD COLUMN IF NOT EXISTS name CHARACTER VARYING(300) NOT NULL DEFAULT '.'::character varying;
-- c_dunning_header_v
ALTER TABLE IF EXISTS adempiere.c_dunning_header_v ADD COLUMN IF NOT EXISTS c_bpartner_location_name CHARACTER VARYING(300) NULL;
-- c_dunning_header_vt
ALTER TABLE IF EXISTS adempiere.c_dunning_header_vt ADD COLUMN IF NOT EXISTS c_bpartner_location_name CHARACTER VARYING(300) NULL;
--  c_invoice
ALTER TABLE IF EXISTS adempiere.c_invoice ADD COLUMN IF NOT EXISTS approveddiscby CHARACTER VARYING(255) NULL;
--  c_invoice_header_v
ALTER TABLE IF EXISTS adempiere.c_invoice_header_v ADD COLUMN IF NOT EXISTS bp_location_name CHARACTER VARYING(300) NULL;
-- c_invoice_header_vt
ALTER TABLE IF EXISTS adempiere.c_invoice_header_vt ADD COLUMN IF NOT EXISTS bp_location_name CHARACTER VARYING(300) NULL;
-- c_invoicetax
ALTER TABLE IF EXISTS adempiere.c_invoicetax ADD COLUMN IF NOT EXISTS taxnbr CHARACTER VARYING(22) NULL DEFAULT NULL:character varying;
-- c_order_header_v
ALTER TABLE IF EXISTS adempiere.c_order_header_v ADD COLUMN IF NOT EXISTS bp_location_name CHARACTER VARYING(300) NULL;
ALTER TABLE IF EXISTS adempiere.c_order_header_v ADD COLUMN IF NOT EXISTS bill_bp_location_name CHARACTER VARYING(300) NULL;
-- c_order_header_vt
ALTER TABLE IF EXISTS adempiere.c_order_header_vt ADD COLUMN IF NOT EXISTS bp_location_name CHARACTER VARYING(300) NULL;
ALTER TABLE IF EXISTS adempiere.c_order_header_vt ADD COLUMN IF NOT EXISTS bill_bp_location_name CHARACTER VARYING(300) NULL;
-- c_project_header_v
ALTER TABLE IF EXISTS adempiere.c_project_header_v ADD COLUMN IF NOT EXISTS c_bp_location_name CHARACTER VARYING(300) NULL;
-- c_project_header_vt
ALTER TABLE IF EXISTS adempiere.c_project_header_vt ADD COLUMN IF NOT EXISTS c_bp_location_name CHARACTER VARYING(300) NULL;
-- isy_timesheet
CREATE TABLE IF NOT EXISTS adempiere.isy_timesheet (
    ad_client_id NUMERIC(10,0) NOT NULL,
    ad_org_id NUMERIC(10,0) NOT NULL,
    ad_orgtrx_id NUMERIC(10,0) NULL,
    c_activity_id NUMERIC(10,0) NULL,
    c_bpartner_id NUMERIC(10,0) NOT NULL,
    c_campaign_id NUMERIC(10,0) NULL,
    c_project_id NUMERIC(10,0) NULL,
    created TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT statement_timestamp(),
    createdby NUMERIC,
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