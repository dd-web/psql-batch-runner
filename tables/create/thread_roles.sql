CREATE TABLE IF NOT EXISTS thread_roles (
	id SERIAL PRIMARY KEY,
	role VARCHAR(31) NOT NULL UNIQUE
);

INSERT INTO thread_roles
	(role)
VALUES
	('user'),
	('moderator'),
	('creator');