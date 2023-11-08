CREATE TABLE IF NOT EXISTS article_statuses (
	id SERIAL PRIMARY KEY,
	status VARCHAR(31) NOT NULL UNIQUE
);

INSERT INTO article_statuses
	(status)
VALUES
	('draft'),
	('review'),
	('published'),
	('archived'),
	('retracted');