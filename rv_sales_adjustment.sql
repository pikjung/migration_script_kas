-- rv_sales_adjustment
CREATE IF NOT EXISTS rv_sales_adjustment (
    ad_client_id NUMERIC(10,0),
    ad_org_id NUMERIC(10,0),
    m_product_id NUMERIC(10,0),
    c_bpartner_id NUMERIC(10,0),
    c_order_id NUMERIC(10,0),
    movementdate TIMESTAMP WITHOUT TIME ZONE DEFAULT statement_timestamp(),
    m_inout_id NUMERIC,
    movementqty NUMERIC,
    a_period_1 TEXT,
    c_invoice_id NUMERIC(10,0),
    qtyinvoiced NUMERIC,
    a_period_2 TEXT,
    linenetamt NUMERIC,
    a_period_3 TEXT,
);