BEGIN;

CREATE TABLE menu_item (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  "desc" TEXT NOT NULL,
  price INTEGER NOT NULL,
  category TEXT NOT NULL
);

CREATE TABLE booking (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  phone TEXT NOT NULL,
  date DATE NOT NULL,
  time TIME NOT NULL,
  persons INTEGER NOT NULL,
  message TEXT
);

CREATE TABLE staff_user (
  id SERIAL PRIMARY KEY,
  username TEXT NOT NULL UNIQUE,
  password_hash TEXT NOT NULL
);

COMMIT;
