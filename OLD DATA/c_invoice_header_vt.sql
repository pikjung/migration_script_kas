-- c_invoice_header_vt
ALTER TABLE IF EXISTS adempiere.c_invoice_header_vt ADD COLUMN IF NOT EXISTS bp_location_name CHARACTER VARYING(300);