-- m_inout_header_vt
ALTER TABLE IF EXISTS adempiere.m_inout_header_vt ADD COLUMN IF NOT EXISTS c_bp_location_name CHARACTER VARYING(300);