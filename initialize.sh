#!/bin/bash

psql --username "$POSTGRES_USER" <<EOF
CREATE DATABASE my_db WITH OWNER $POSTGRES_USER;
GRANT ALL PRIVILEGES ON DATABASE my_db TO $POSTGRES_USER;

\c my_db
CREATE EXTENSION IF NOT EXISTS timescaledb CASCADE;

CREATE TABLE IF NOT EXISTS  my_testable (
  time      TIMESTAMP         NOT NULL,
  metric    TEXT              NOT NULL,
  usage     DOUBLE PRECISION  NOT NULL
);
SELECT create_hypertable('my_testable', 'time');
CREATE INDEX IF NOT EXISTS usage_metric ON my_testable (metric, time DESC);
EOF