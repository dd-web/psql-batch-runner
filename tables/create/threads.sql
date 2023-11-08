CREATE TABLE IF NOT EXISTS threads (
	id SERIAL PRIMARY KEY,
	status_id INT NOT NULL,
	board_id INT NOT NULL,
	creator_id INT NOT NULL,

	title VARCHAR(127) NOT NULL,
	body TEXT NOT NULL,
	slug VARCHAR(127) NOT NULL UNIQUE,
	
	created_at TIMESTAMP NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMP NOT NULL DEFAULT NOW() CHECK (updated_at >= created_at),
	deleted_at TIMESTAMP,
	
	FOREIGN KEY (status_id) REFERENCES thread_statuses (id),
	FOREIGN KEY (board_id) REFERENCES boards (id),
	FOREIGN KEY (creator_id) REFERENCES identities (id)
);