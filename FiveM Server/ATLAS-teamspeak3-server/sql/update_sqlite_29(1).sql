CREATE TABLE integrations (
  server_id integer unsigned NOT NULL,
  integration_id varchar(36) NOT NULL,
  integration_type integer unsigned NOT NULL,
  integration_user_info varchar(4096),
  PRIMARY KEY (server_id, integration_id)
);
CREATE INDEX index_integrations_server_id ON integrations (server_id);

CREATE TABLE integration_actions (
  integration_action_id integer PRIMARY KEY AUTOINCREMENT NOT NULL,
  server_id integer unsigned NOT NULL,
  integration_id varchar(36) NOT NULL,
  integration_response_type integer unsigned NOT NULL,
  integration_response_value varchar(255) NOT NULL,
  integration_action_type integer unsigned NOT NULL,
  integration_action_value varchar(255) NOT NULL
);
CREATE INDEX index_integration_actions_server_id ON integration_actions (server_id);

DELETE FROM client_properties WHERE ident = "client_lastconnected";