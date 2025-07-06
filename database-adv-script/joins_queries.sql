-- INNER JOIN: Bookings and the users who made them
SELECT 
    Booking.booking_id,
    Booking.start_date,
    Booking.end_date,
    Booking.total_price,
    Booking.status,
    User.user_id,
    User.first_name,
    User.last_name,
    User.email
FROM Booking
INNER JOIN User ON Booking.user_id = User.user_id;


-- LEFT JOIN: All properties and their reviews (including properties without reviews)
SELECT 
    Property.property_id,
    Property.name,
    Property.location,
    Review.review_id,
    Review.rating,
    Review.comment
FROM Property
LEFT JOIN Review ON Property.property_id = Review.property_id;
ORDER BY Property.name;


-- FULL OUTER JOIN: All users and all bookings
-- Note: Use this version if your DBMS supports FULL OUTER JOIN
SELECT 
    User.user_id,
    User.first_name,
    Booking.booking_id,
    Booking.start_date,
    Booking.total_price
FROM User
FULL OUTER JOIN Booking ON User.user_id = Booking.user_id;


-- FULL OUTER JOIN workaround for MySQL (use this instead if needed)
SELECT 
    User.user_id,
    User.first_name,
    Booking.booking_id,
    Booking.start_date,
    Booking.total_price
FROM User
LEFT JOIN Booking ON User.user_id = Booking.user_id

UNION

SELECT 
    User.user_id,
    User.first_name,
    Booking.booking_id,
    Booking.start_date,
    Booking.total_price
FROM Booking
LEFT JOIN User ON Booking.user_id = User.user_id
WHERE User.user_id IS NULL;
