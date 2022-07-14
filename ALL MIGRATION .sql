-- c_bankstatement
ALTER TABLE c_bankstatement ADD COLUMN c_project_id NUMERIC(10,0);
-- c_bankstatementline
ALTER TABLE c_bankstatementline ADD COLUMN c_project_id NUMERIC(10,0);
-- c_bpartner_location
ALTER TABLE c_bpartner_location ADD COLUMN name CHARACTER VARYING(300) DEFAULT '.';
-- c_dunning_header_v
ALTER TABLE c_dunning_header_v ADD COLUMN c_bpartner_location_name CHARACTER VARYING(300);
-- c_dunning_header_vt
ALTER TABLE c_dunning_header_vt ADD COLUMN c_bpartner_location_name CHARACTER VARYING(300);
--  c_invoice
ALTER TABLE c_invoice ADD COLUMN approveddiscby CHARACTER VARYING(255);
--  c_invoice_header_v
ALTER TABLE c_invoice_header_v ADD COLUMN bp_location_name CHARACTER VARYING(300);
-- c_invoice_header_vt
ALTER TABLE c_invoice_header_vt ADD COLUMN bp_location_name CHARACTER VARYING(300);
-- c_invoicetax
ALTER TABLE c_invoicetax ADD COLUMN taxnbr CHARACTER VARYING(22);
-- c_order_header_v
ALTER TABLE c_order_header_v ADD COLUMN bp_location_name CHARACTER VARYING(300);
ALTER TABLE c_order_header_v ADD COLUMN bill_bp_location_name CHARACTER VARYING(300);
-- c_order_header_vt
ALTER TABLE c_order_header_vt ADD COLUMN bp_location_name CHARACTER VARYING(300);
ALTER TABLE c_order_header_vt ADD COLUMN bill_bp_location_name CHARACTER VARYING(300);
-- c_project_header_v
ALTER TABLE c_project_header_v ADD COLUMN c_bp_location_name CHARACTER VARYING(300);
-- c_project_header_vt
ALTER TABLE c_project_header_vt ADD COLUMN c_bp_location_name CHARACTER VARYING(300);
-- isy_timesheet
CREATE TABLE isy_timesheet (
    ad_client_id NUMERIC(10,0),
    ad_org_id NUMERIC(10,0),
    ad_orgtrx_id NUMERIC(10,0),
    c_activity_id NUMERIC(10,0),
    c_bpartner_id NUMERIC(10,0),
    c_campaign_id NUMERIC(10,0),
    c_project_id NUMERIC(10,0),
    created TIMESTAMP WITHOUT TIME ZONE,
    createdby NUMERIC,
    endtime TIMESTAMP WITHOUT TIME ZONE,
    isactive CHARACTER(1) DEFAULT 'Y',
    isy_timesheet_id NUMERIC(10,0),
    starttime TIMESTAMP WITHOUT TIME ZONE,
    status CHARACTER VARYING(60),
    updated TIMESTAMP WITHOUT TIME ZONE,
    updatedby NUMERIC(10,0),
    user1_id NUMERIC(10,0),
    user2_id NUMERIC(10,0),
);

