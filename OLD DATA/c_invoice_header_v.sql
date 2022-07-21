--  c_invoice_header_v
ALTER TABLE IF EXISTS adempiere.c_invoice_header_v ADD COLUMN IF NOT EXISTS bp_location_name CHARACTER VARYING(300);