-- rv_c_invoice
ALTER TABLE IF EXISTS adempiere.rv_c_invoice ADD COLUMN IF NOT EXISTS bp_location_name CHARACTER VARYING(300);
ALTER TABLE IF EXISTS adempiere.rv_c_invoice ADD COLUMN IF NOT EXISTS c_bp_location_userid CHARACTER VARYING(512);