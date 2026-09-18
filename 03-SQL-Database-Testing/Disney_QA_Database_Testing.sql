USE disney_qa;

SELECT *
FROM reservations;
INSERT INTO reservations	
(reservation_id, guest_name, restaurant, party_size, status)
VALUES
(102, 'Tiana', 'Space 220', 2, 'Confirmed'),
(103, 'Jasmine', 'Chef Mickeys', 5, 'Pending'),
(104, 'Mickey', 'Ohana', 3, 'Cancelled');
SELECT *
FROM reservations

WHERE guest_name = 'Jasmine';
SELECT *
FROM reservations
WHERE party_size = 3;
SELECT restaurant, party_size
FROM reservations;
SELECT guest_name, status
FROM reservations
WHERE restaurant = 'Ohana';
SELECT guest_name, party_size
FROM reservations
ORDER BY party_size DESC;
SELECT COUNT(*)
FROM reservations;
SELECT COUNT(*)
FROM reservations
WHERE party_size = 4;
SELECT *
FROM reservations
WHERE status = 'Confirmed'
AND party_size = 2;
SELECT *
FROM reservations
WHERE party_size = 2
OR party_size = 5;
SELECT *
FROM reservations
WHERE guest_name = 'Mickey';
UPDATE reservations
SET status = 'Confirmed'
WHERE guest_name = 'Mickey';
SELECT *
FROM reservations
WHERE reservation_id = 104;
UPDATE reservations
SET status = 'Confirmed'
WHERE reservation_id = 104;
ALTER TABLE reservations
ADD PRIMARY KEY (reservation_id);
SELECT *
FROM reservations
WHERE reservation_id = 103;
DELETE FROM reservations
WHERE reservation_id = 103;
SELECT *
FROM reservations
WHERE reservation_id = 103;
SELECT *
FROM reservations
WHERE guest_name IS NULL;
INSERT INTO reservations
(reservation_id, guest_name, restaurant, party_size, status)
VALUES
(105, NULL, 'Cinderellas Royal Table', 4, 'Confirmed');
SELECT *
FROM reservations
WHERE guest_name IS NULL;
SELECT COUNT(*)
FROM reservations
WHERE guest_name IS NULL;
INSERT INTO reservations
(reservation_id, guest_name, restaurant, party_size, status)
VALUES
(105, 'Ariel', 'Crystal Palace', 2, 'Confirmed');
INSERT INTO reservations
(reservation_id, guest_name, restaurant, party_size, status)
VALUES
(106, 'Elsa', 'Akershus', 0, 'Confirmed');
SELECT *
FROM reservations
WHERE reservation_id = 106;
UPDATE reservations
SET party_size = 2
WHERE reservation_id = 106;
SELECT *
FROM reservations
WHERE reservation_id = 106;
ALTER TABLE reservations
ADD CONSTRAINT chk_party_size
CHECK (party_size > 0);
INSERT INTO reservations
(reservation_id, guest_name, restaurant, party_size, status)
VALUES
(107, 'Moana', 'Topolinos Terrace', 0, 'Confirmed');
SELECT *
FROM reservations
WHERE restaurant LIKE '%Guest%';
SELECT *
FROM reservations
WHERE guest_name LIKE '%a';
SELECT status, COUNT(*)
FROM reservations
GROUP BY status;
INSERT INTO reservations
(reservation_id, guest_name, restaurant, party_size, status)
VALUES
(108, 'Belle', 'Skipper Canteen', 3, 'Pending'),
(109, 'Goofy', 'Garden Grill', 5, 'Cancelled');
SELECT COUNT(*)
FROM reservations;
SELECT status, COUNT(*)
FROM reservations
GROUP BY status;
CREATE TABLE restaurant_details (
    restaurant VARCHAR(100) PRIMARY KEY,
    location VARCHAR(50),
    dining_type VARCHAR(50)
);
INSERT INTO restaurant_details
(restaurant, location, dining_type)
VALUES
('Be Our Guest', 'Magic Kingdom', 'Table Service'),
('Space 220', 'EPCOT', 'Table Service'),
('Ohana', 'Polynesian Resort', 'Table Service'),
('Cinderellas Royal Table', 'Magic Kingdom', 'Character Dining'),
('Akershus', 'EPCOT', 'Character Dining'),
('Skipper Canteen', 'Magic Kingdom', 'Table Service'),
('Garden Grill', 'EPCOT', 'Character Dining');
SELECT *
FROM restaurant_details;
SELECT reservations.guest_name,
       reservations.restaurant,
       restaurant_details.location
FROM reservations
JOIN restaurant_details
ON reservations.restaurant = restaurant_details.restaurant;
SELECT reservations.guest_name,
       reservations.restaurant,
       restaurant_details.dining_type
FROM reservations
JOIN restaurant_details
ON reservations.restaurant = restaurant_details.restaurant;