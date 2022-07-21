-- rv_bpartner
ALTER TABLE IF EXISTS adempiere.rv_bpartner ADD COLUMN IF NOT EXISTS c_bp_location_name CHARACTER VARYING(300);
