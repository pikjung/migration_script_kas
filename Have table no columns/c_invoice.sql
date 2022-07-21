--  c_invoice
ALTER TABLE IF EXISTS adempiere.c_invoice ADD COLUMN IF NOT EXISTS approveddiscby CHARACTER VARYING(255);