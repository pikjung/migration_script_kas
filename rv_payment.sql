-- rv_payment
ALTER TABLE IF EXISTS adempiere.rv_payment ADD COLUMN IF NOT EXISTS giro_chasing NUMERIC(10,0) NOT NULL;   