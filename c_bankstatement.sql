-- c_bankstatement
ALTER TABLE IF EXISTS adempiere.c_bankstatement ADD COLUMN IF NOT EXISTS c_project_id NUMERIC(10,0) DEFAULT NULL::numeric;