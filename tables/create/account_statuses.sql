CREATE TABLE IF NOT EXISTS account_statuses (
	id SERIAL PRIMARY KEY,
	status VARCHAR(31) NOT NULL UNIQUE
);

INSERT INTO account_statuses (status) VALUES
('active'),
('inactive'),
('suspended'),
('banned');