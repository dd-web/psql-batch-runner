CREATE TABLE IF NOT EXISTS thread_mods (
	id SERIAL PRIMARY KEY,
	thread_id INT NOT NULL,
	identity_id INT NOT NULL,
	FOREIGN KEY (thread_id) REFERENCES threads (id),
	FOREIGN KEY (identity_id) REFERENCES identities (id)
);