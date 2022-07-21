-- isy_timesheet
CREATE TABLE IF NOT EXISTS adempiere.isy_timesheet (
    ad_client_id NUMERIC(10,0) NOT NULL,
    ad_org_id NUMERIC(10,0) NOT NULL,
    ad_orgtrx_id NUMERIC(10,0) NULL DEFAULT NULL::numeric,
    c_activity_id NUMERIC(10,0) NULL DEFAULT NULL::numeric,
    c_bpartner_id NUMERIC(10,0) NOT NULL,
    c_campaign_id NUMERIC(10,0) NULL DEFAULT NULL::numeric,
    c_project_id NUMERIC(10,0) NULL DEFAULT NULL::numeric,
    created TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT statement_timestamp(),
    createdby NUMERIC,
    description CHARACTER VARYING(255) NULL DEFAULT NULL::character varying,
    endtime TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT statement_timestamp(),
    isactive CHARACTER(1) DEFAULT 'Y'::bpchar,
    isy_timesheet_id NUMERIC(10,0) NOT NULL NOT NULL DEFAULT statement_timestamp(),
    starttime TIMESTAMP WITHOUT TIME ZONE,
    status CHARACTER VARYING(60),
    updated TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT statement_timestamp(),
    updatedby NUMERIC(10,0) NOT NULL,
    user1_id NUMERIC(10,0) NOT NULL,
    user2_id NUMERIC(10,0) NOT NULL,
);