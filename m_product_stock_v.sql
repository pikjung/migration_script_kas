-- m_product_stock_v
ALTER TABLE IF EXISTS adempiere.m_product_stock_v ADD COLUMN IF NOT EXISTS movementqty NUMERIC;
