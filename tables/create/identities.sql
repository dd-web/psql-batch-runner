CREATE TABLE IF NOT EXISTS identities (
	id SERIAL PRIMARY KEY,
	account_id INT NOT NULL,
	role_id INT NOT NULL DEFAULT 1,
	style_id INT NOT NULL,
	status_id INT NOT NULL DEFAULT 1,
	name VARCHAR(31) UNIQUE NOT NULL,
	
	created_at TIMESTAMP NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMP NOT NULL DEFAULT NOW() CHECK (updated_at >= created_at),
	deleted_at TIMESTAMP,
	
	FOREIGN KEY (account_id) REFERENCES accounts (id),
	FOREIGN KEY (role_id) REFERENCES thread_roles (id),
	FOREIGN KEY (style_id) REFERENCES identity_styles (id),
	FOREIGN KEY (status_id) REFERENCES identity_statuses (id)
);