CREATE TABLE IF NOT EXISTS posts (
	id SERIAL PRIMARY KEY,
	post_number INT NOT NULL,
	creator_id INT NOT NULL,
	thread_id INT NOT NULL,
	board_id INT NOT NULL,
	
	body TEXT NOT NULL,
	
	created_at TIMESTAMP NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMP NOT NULL DEFAULT NOW() CHECK (updated_at >= created_at),
	deleted_at TIMESTAMP,
	
	FOREIGN KEY (creator_id) REFERENCES identities (id),
	FOREIGN KEY (thread_id) REFERENCES threads (id),
	FOREIGN KEY (board_id) REFERENCES boards (id),
	UNIQUE (board_id, post_number)
);