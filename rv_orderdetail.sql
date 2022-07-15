-- rv_orderdetail
ALTER TABLE IF EXISTS adempiere.rv_orderdetail ADD COLUMN IF NOT EXISTS enteredamt NUMERIC NOT NULL;
ALTER TABLE IF EXISTS adempiere.rv_orderdetail ADD COLUMN IF NOT EXISTS orderedamt NUMERIC NOT NULL;
ALTER TABLE IF EXISTS adempiere.rv_orderdetail ADD COLUMN IF NOT EXISTS deliveredamt NUMERIC NOT NULL;
ALTER TABLE IF EXISTS adempiere.rv_orderdetail ADD COLUMN IF NOT EXISTS invoicedamt NUMERIC NOT NULL;
ALTER TABLE IF EXISTS adempiere.rv_orderdetail ADD COLUMN IF NOT EXISTS amttodeliver NUMERIC NOT NULL;
ALTER TABLE IF EXISTS adempiere.rv_orderdetail ADD COLUMN IF NOT EXISTS convertedenteredamt NUMERIC NOT NULL;
ALTER TABLE IF EXISTS adempiere.rv_orderdetail ADD COLUMN IF NOT EXISTS convertedorderedamt NUMERIC NOT NULL;
ALTER TABLE IF EXISTS adempiere.rv_orderdetail ADD COLUMN IF NOT EXISTS converteddeliveredamt NUMERIC NOT NULL;
ALTER TABLE IF EXISTS adempiere.rv_orderdetail ADD COLUMN IF NOT EXISTS convertedinvoicedamt NUMERIC NOT NULL;
ALTER TABLE IF EXISTS adempiere.rv_orderdetail ADD COLUMN IF NOT EXISTS convertedamttodeliver NUMERIC NOT NULL;
ALTER TABLE IF EXISTS adempiere.rv_orderdetail ADD COLUMN IF NOT EXISTS convertedamttoinvoice NUMERIC NOT NULL;
ALTER TABLE IF EXISTS adempiere.rv_orderdetail ADD COLUMN IF NOT EXISTS parent_org_id NUMERIC(10,0) NOT NULL;