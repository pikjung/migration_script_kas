-- sas_it_orderline
CREATE TABLE IF NOT EXISTS adempiere.sas_it_orderline (
    sas_it_orderline_id NUMERIC(10,0) NOT NULL,
    ad_client_id NUMERIC(10,0) NOT NULL,
    ad_org_id NUMERIC(10,0) NOT NULL,
    ad_orgtrx_id NUMERIC(10,0),
    isactive CHARACTER(1) NOT NULL DEFAULT 'Y'::bpchar,
    created TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT now(),
    createdby NUMERIC(10,0) NOT NULL,
    updated TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT now(),
    updatedby NUMERIC(10,0) NOT NULL,
    sas_it_order_id NUMERIC(10,0) NOT NULL,
    line NUMERIC(10,0) NOT NULL,
    c_bpartner_id NUMERIC(10,0),
    c_bpartner_location_id NUMERIC(10,0),
    dateordered TIMESTAMP WITHOUT TIME ZONE NOT NULL,
    m_product_id NUMERIC(10,0),
    m_warehouse_id NUMERIC(10,0) NOT NULL,
    c_uom_id NUMERIC(10,0) NOT NULL,
    qtyentered NUMERIC NOT NULL,
    qtyordered NUMERIC NOT NULL DEFAULT 0,
    qtyreserved NUMERIC NOT NULL DEFAULT 0,
    qtydelivered NUMERIC NOT NULL DEFAULT 0,
    qtyinvoiced NUMERIC NOT NULL DEFAULT 0,
    c_charge_id NUMERIC(10,0),
    c_tax_id NUMERIC(10,0) NOT NULL,
    c_campaign_id NUMERIC(10,0),
    m_promotion_id NUMERIC(10,0),
    source_orderline_id NUMERIC(10,0),
    relatedproduct_id NUMERIC(10,0),
    qtychecking NUMERIC DEFAULT '0'::numeric,
    ischecked CHARACTER(1) DEFAULT 'N'::bpchar,
    processed CHARACTER(1) DEFAULT 'N'::bpchar,
    picby CHARACTER VARYING(60) DEFAULT NULL::character varying
);