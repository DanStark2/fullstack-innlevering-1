INSERT INTO menu_item (name, "desc", price, category)
VALUES
  ('Pizza', 'Cheese and tomato', 159, 'Main'),
  ('Burger', 'Beef burger with fries', 199, 'Main'),
  ('Pasta', 'Cream sauce pasta', 179, 'Main');

INSERT INTO booking (name, phone, date, time, persons, message)
VALUES
  ('Dan', '12345678', '2025-12-20', '18:00', 2, 'Window table');

INSERT INTO staff_user (username, password_hash)
VALUES
  ('admin', 'hashed_password_here');

SELECT * FROM menu_item;
SELECT * FROM booking;
SELECT * FROM staff_user;
