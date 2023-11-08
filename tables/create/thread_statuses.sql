CREATE TABLE IF NOT EXISTS thread_statuses (
	id SERIAL PRIMARY KEY,
	status VARCHAR(31) NOT NULL UNIQUE
);

INSERT INTO thread_statuses
	(status)
VALUES
	('open'),
	('closed'),
	('archived'),
	('removed');