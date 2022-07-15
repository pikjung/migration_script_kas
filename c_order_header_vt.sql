-- c_order_header_vt
ALTER TABLE IF EXISTS adempiere.c_order_header_vt ADD COLUMN IF NOT EXISTS bp_location_name CHARACTER VARYING(300);
ALTER TABLE IF EXISTS adempiere.c_order_header_vt ADD COLUMN IF NOT EXISTS bill_bp_location_name CHARACTER VARYING(300);