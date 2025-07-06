-- Index on User.email for quick lookup by email (login, validation)
CREATE INDEX idx_user_email ON User(email);

-- Index on Booking.user_id to speed up joins and filters by user
CREATE INDEX idx_booking_user_id ON Booking(user_id);

-- Index on Booking.property_id to optimize joins with Property
CREATE INDEX idx_booking_property_id ON Booking(property_id);

-- Index on Property.location to optimize location-based searches
CREATE INDEX idx_property_location ON Property(location);

-- Index on Property.name to optimize ordering or search by name
CREATE INDEX idx_property_name ON Property(name);
