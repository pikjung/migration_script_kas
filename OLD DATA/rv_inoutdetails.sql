-- rv_inoutdetails
ALTER TABLE IF EXISTS adempiere.rv_inoutdetails ADD COLUMN IF NOT EXISTS po_description CHARACTER VARYING(3999) NOT NULL;