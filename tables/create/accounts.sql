CREATE TABLE IF NOT EXISTS accounts (
	id SERIAL PRIMARY KEY,
	username VARCHAR(63) NOT NULL UNIQUE,
	email VARCHAR(255) NOT NULL UNIQUE,
	created_at TIMESTAMP NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMP NOT NULL DEFAULT NOW() CHECK (updated_at >= created_at),
	deleted_at TIMESTAMP,
	role_id INT NOT NULL,
	status_id INT NOT NULL,
	FOREIGN KEY (role_id) REFERENCES account_roles (id),
	FOREIGN KEY (status_id) REFERENCES account_statuses (id)
);

INSERT INTO accounts (username, email, status_id, role_id) VALUES
('david', 'devduncan89@gmail.com', 1, 4),
('nick', 'nick@gmail.com', 1, 3),
('testguy', 'testdude85@gmail.com', 1, 1),
('coolblue', 'blue32@yahoo.com', 1, 1),
('manbearpig', 'fakeemail@fake.com', 1, 1),
('glown', 'clown@yahoo.com', 4, 1),
('test', 'test@test.com', 1, 2);