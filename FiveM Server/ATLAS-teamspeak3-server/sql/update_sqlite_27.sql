CREATE TABLE revocations (
  revocation_key VARCHAR(44) NOT NULL,
  revocation_type INTEGER UNSIGNED NOT NULL,
  revocation_expiration INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(revocation_type, revocation_key)
);