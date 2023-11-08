CREATE TABLE IF NOT EXISTS articles (
	id SERIAL PRIMARY KEY,
	author_id INT NOT NULL,
	status_id INT NOT NULL,
	title VARCHAR(255) NOT NULL,
	body TEXT NOT NULL,
	slug VARCHAR(127) NOT NULL UNIQUE,
	created_at TIMESTAMP NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMP NOT NULL DEFAULT NOW() CHECK (updated_at >= created_at),
	FOREIGN KEY (author_id) REFERENCES accounts (id),
	FOREIGN KEY (status_id) REFERENCES article_statuses (id)
);
	
INSERT INTO articles
  (title, body, author_id, status_id, slug)
VALUES
  ('Article one', '<div>its my cool article. woaaaah!</div>', 1, 3, 'hello-world'),
  ('How to be cool', '<div>dont be. being cool is for lames.</div>', 2, 1, 'how-to-be-cool'),
  ('another article on why everything sucks', '<div>yeah everything still sucks.</div>', 2, 3, 'everything-sucks');