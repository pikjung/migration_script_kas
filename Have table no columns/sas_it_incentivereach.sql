-- sas_it_incentivereach
ALTER TABLE IF EXISTS adempiere.sas_it_incentivereach ADD COLUMN IF NOT EXISTS regioncollection CHARACTER VARYING(50) DEFAULT NULL::character varying;
ALTER TABLE IF EXISTS adempiere.sas_it_incentivereach ADD COLUMN IF NOT EXISTS sas_it_incentivereach_uu CHARACTER VARYING(36) DEFAULT NULL::character varying;