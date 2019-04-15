RENAME TABLE custom_fields TO custom_fields_old;
CREATE TABLE custom_fields(
  server_id integer unsigned,
  client_id integer unsigned,
  ident  varchar(100) NOT NULL,
  value  varchar(255),
  PRIMARY KEY (server_id, client_id, ident)
) CHARACTER SET 'utf8mb4';
CREATE INDEX index_custom_fields_by_client ON custom_fields (server_id, client_id);
CREATE INDEX index_custom_fields_by_ident ON custom_fields (server_id, ident);

INSERT IGNORE INTO custom_fields
  (server_id, client_id, ident, value)
  SELECT server_id, client_id, ident, value FROM custom_fields_old;
