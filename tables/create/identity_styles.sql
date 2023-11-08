CREATE TABLE IF NOT EXISTS identity_styles (
	id SERIAL PRIMARY KEY,
	style VARCHAR(63) UNIQUE NOT NULL
);

INSERT INTO identity_styles 
	(style)
VALUES
	('ids-filled-primary'),
	('ids-filled-secondary'),
	('ids-filled-tertiary'),
	('ids-filled-success'),
	('ids-filled-warning'),
	('ids-filled-error'),
	('ids-filled-surface'),
	('ids-ghost-primary'),
	('ids-ghost-secondary'),
	('ids-ghost-tertiary'),
	('ids-ghost-success'),
	('ids-ghost-warning'),
	('ids-ghost-error'),
	('ids-ghost-surface'),
	('ids-soft-primary'),
	('ids-soft-secondary'),
	('ids-soft-tertiary'),
	('ids-soft-success'),
	('ids-soft-warning'),
	('ids-soft-error'),
	('ids-soft-surface'),
	('ids-glass-primary'),
	('ids-glass-secondary'),
	('ids-glass-tertiary'),
	('ids-glass-success'),
	('ids-glass-warning'),
	('ids-glass-error'),
	('ids-glass-surface');