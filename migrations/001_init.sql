-- SQL for initializing database
CREATE TABLE users (id SERIAL PRIMARY KEY, name TEXT, email TEXT, oauth_provider TEXT, created_at TIMESTAMP);
CREATE TABLE bands (id SERIAL PRIMARY KEY, name TEXT, owner_id INTEGER);
CREATE TABLE memberships (user_id INTEGER, band_id INTEGER, role TEXT);
CREATE TABLE rehearsals (id SERIAL PRIMARY KEY, band_id INTEGER, start_time TIMESTAMP, end_time TIMESTAMP, description TEXT);
CREATE TABLE attendance (rehearsal_id INTEGER, user_id INTEGER, status TEXT);
CREATE TABLE messages (id SERIAL PRIMARY KEY, rehearsal_id INTEGER, sender_id INTEGER, content TEXT, sent_at TIMESTAMP);
