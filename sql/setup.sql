-- Use this file to define your SQL tables
-- The SQL in this file will be executed when you run `npm run setup-db`


DROP TABLE if exists users;
DROP TABLE if exists secrets;

CREATE TABLE users (
	id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	first_name TEXT NOT NULL,
	last_name TEXT NOT NULL,
	email TEXT NOT NULL,
	password_hash TEXT NOT NULL
);

CREATE TABLE secrets (
	id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	title TEXT NOT NULL,
	description TEXT NOT NULL,
	created_at TIMESTAMP
);

INSERT INTO secrets (title, description, created_at) VALUES
('Leave America ASAP', 'This is no secret', CURRENT_TIMESTAMP)