CREATE TABLE IF NOT EXISTS identity_statuses (
	id SERIAL PRIMARY KEY,
	status VARCHAR(31)
);

INSERT INTO identity_statuses
	(status)
VALUES
	('active'),
	('inactive'),
	('suspended'),
	('banned');