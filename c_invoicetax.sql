-- c_invoicetax
ALTER TABLE IF EXISTS adempiere.c_invoicetax ADD COLUMN IF NOT EXISTS taxnbr CHARACTER VARYING(22) NULL DEFAULT NULL::character varying;