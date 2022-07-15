-- rv_fact_acct_isy_385
CREATE TABLE IF NOT EXISTS adempiere.rv_fact_acct_isy_385 (
    ad_client_id NUMERIC(10,0),
    ad_org_id NUMERIC(10,0),
    isactive character(1),
    created TIMESTAMP WITHOUT TIME ZONE DEFAULT statement_timestamp(),
    createdby NUMERIC(10,0),
    updated TIMESTAMP WITHOUT TIME ZONE DEFAULT statement_timestamp(),
    updatedby NUMERIC(10,0),
    c_acctschema_id NUMERIC(10,0),
    ad_orgtrx_id NUMERIC(10,0),
    dateacct TIMESTAMP WITHOUT TIME ZONE DEFAULT statement_timestamp(),
    datetrx TIMESTAMP WITHOUT TIME ZONE DEFAULT statement_timestamp(),
    c_periode_id NUMERIC(10,0),
    amtacctdr NUMERIC,
    amtacctcr NUMERIC,
    m_product_id NUMERIC(10,0),
    c_bpartner_id NUMERIC(10,0),
    c_project_id NUMERIC(10,0),
    c_order_id NUMERIC(10,0),
    m_rma_id NUMERIC(10,0),
    description CHARACTER VARYING(255),
    accountvalue CHARACTER VARYING(40),
    account_id NUMERIC(10,0),
    ad_table_id NUMERIC(10,0),
    gl_category_id NUMERIC(10,0),
    amtacct NUMERIC,
    documentno CHARACTER VARYING(30),
);