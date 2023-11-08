CREATE TABLE IF NOT EXISTS account_roles (
  id SERIAL PRIMARY KEY,
  role VARCHAR(31) NOT NULL UNIQUE
);

INSERT INTO account_roles
  (role)
VALUES
  ('user'),
  ('moderator'),
  ('admin'),
  ('super');