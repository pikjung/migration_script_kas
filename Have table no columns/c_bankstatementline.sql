-- c_bankstatementline
ALTER TABLE IF EXISTS adempiere.c_bankstatementline ADD COLUMN IF NOT EXISTS c_project_id NUMERIC(10,0) DEFAULT NULL::numeric;