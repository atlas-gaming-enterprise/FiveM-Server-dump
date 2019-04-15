ALTER TABLE custom_fields RENAME TO custom_fields_old;
CREATE TABLE custom_fields (
  server_id integer unsigned,
  client_id integer unsigned,
  ident  varchar(100) NOT NULL,
  value  varchar(255),
  PRIMARY KEY (server_id, client_id, ident)
);
CREATE INDEX index_custom_fields_by_client ON custom_fields (server_id, client_id);
CREATE INDEX index_custom_fields_by_ident ON custom_fields (server_id, ident);

INSERT OR IGNORE INTO custom_fields
  (server_id, client_id, ident, value)
  SELECT server_id, client_id, ident, value FROM custom_fields_old;
