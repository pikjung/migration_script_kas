-- m_rma
ALTER TABLE IF EXISTS adempiere.m_rma ADD COLUMN IF NOT EXISTS c_activity_id NUMERIC(10,0) DEFAULT NULL::numeric;
ALTER TABLE IF EXISTS adempiere.m_rma ADD COLUMN IF NOT EXISTS c_project_id NUMERIC(10,0) DEFAULT NULL::numeric;