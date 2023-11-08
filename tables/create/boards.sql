CREATE TABLE IF NOT EXISTS boards (
	id SERIAL PRIMARY KEY,
	title VARCHAR(63) UNIQUE NOT NULL,
	short VARCHAR(7) UNIQUE NOT NULL,
	description VARCHAR(255) NOT NULL,
	created_at TIMESTAMP NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMP NOT NULL DEFAULT NOW() CHECK (updated_at >= created_at),
	post_count INT NOT NULL DEFAULT 1
);

INSERT INTO boards 
	(title, short, description)
VALUES
	('general', 'gen', 'general discussion of general topics, generally.'),
	('science', 'sci', 'smart guy stuff'),
	('mathematics', 'math', 'numbers and other imaginary constructs'),
	('video games', 'vg', 'real life but better'),
	('art', 'art', 'it''s subjective');