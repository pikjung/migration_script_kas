-- c_bankstatement
ALTER TABLE c_bankstatement ADD COLUMN c_project_id NUMERIC(10,0) NULL;
-- c_bankstatementline
ALTER TABLE c_bankstatementline ADD COLUMN c_project_id NUMERIC(10,0) NULL;
-- c_bpartner_location
ALTER TABLE c_bpartner_location ADD COLUMN name CHARACTER VARYING(300) DEFAULT '.';
-- c_dunning_header_v
ALTER TABLE c_dunning_header_v ADD COLUMN c_bpartner_location_name CHARACTER VARYING(300) NULL;
-- c_dunning_header_vt
ALTER TABLE c_dunning_header_vt ADD COLUMN c_bpartner_location_name CHARACTER VARYING(300) NULL;
--  c_invoice
ALTER TABLE c_invoice ADD COLUMN approveddiscby CHARACTER VARYING(255) NULL;
--  c_invoice_header_v
ALTER TABLE c_invoice_header_v ADD COLUMN bp_location_name CHARACTER VARYING(300) NULL;
-- c_invoice_header_vt
ALTER TABLE c_invoice_header_vt ADD COLUMN bp_location_name CHARACTER VARYING(300) NULL;
-- c_invoicetax
-- ALTER TABLE c_invoicetax ADD COLUMN taxnbr 