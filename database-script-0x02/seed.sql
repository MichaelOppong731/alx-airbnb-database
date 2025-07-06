-- Insert Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at) VALUES
('a1e5e130-0001-4a50-bc51-1fa6de000001', 'Alice', 'Johnson', 'alice@example.com', 'hash1', '1234567890', 'host', CURRENT_TIMESTAMP),
('a1e5e130-0002-4a50-bc51-1fa6de000002', 'Bob', 'Smith', 'bob@example.com', 'hash2', '1234567891', 'guest', CURRENT_TIMESTAMP),
('a1e5e130-0003-4a50-bc51-1fa6de000003', 'Carol', 'Williams', 'carol@example.com', 'hash3', NULL, 'admin', CURRENT_TIMESTAMP);

-- Insert Properties
INSERT INTO Property (property_id, host_id, name, description, location, price_per_night, created_at, updated_at) VALUES
('b2d6f240-0001-4a50-bc51-1fa6de000001', 'a1e5e130-0001-4a50-bc51-1fa6de000001', 'Cozy Apartment', 'A nice and cozy place.', 'Accra, Ghana', 85.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('b2d6f240-0002-4a50-bc51-1fa6de000002', 'a1e5e130-0001-4a50-bc51-1fa6de000001', 'Beachside Villa', 'Luxurious villa near the ocean.', 'Cape Coast, Ghana', 150.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

-- Insert Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at) VALUES
('c3e7g350-0001-4a50-bc51-1fa6de000001', 'b2d6f240-0001-4a50-bc51-1fa6de000001', 'a1e5e130-0002-4a50-bc51-1fa6de000002', '2025-08-01', '2025-08-05', 340.00, 'confirmed', CURRENT_TIMESTAMP),
('c3e7g350-0002-4a50-bc51-1fa6de000002', 'b2d6f240-0002-4a50-bc51-1fa6de000002', 'a1e5e130-0002-4a50-bc51-1fa6de000002', '2025-08-10', '2025-08-12', 300.00, 'pending', CURRENT_TIMESTAMP);

-- Insert Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method) VALUES
('d4f8h460-0001-4a50-bc51-1fa6de000001', 'c3e7g350-0001-4a50-bc51-1fa6de000001', 340.00, CURRENT_TIMESTAMP, 'credit_card');

-- Insert Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at) VALUES
('e5g9i570-0001-4a50-bc51-1fa6de000001', 'b2d6f240-0001-4a50-bc51-1fa6de000001', 'a1e5e130-0002-4a50-bc51-1fa6de000002', 5, 'Great stay! Clean and comfortable.', CURRENT_TIMESTAMP);

-- Insert Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at) VALUES
('f6h0j680-0001-4a50-bc51-1fa6de000001', 'a1e5e130-0002-4a50-bc51-1fa6de000002', 'a1e5e130-0001-4a50-bc51-1fa6de000001', 'Hi Alice, is the beach villa available in August?', CURRENT_TIMESTAMP),
('f6h0j680-0002-4a50-bc51-1fa6de000002', 'a1e5e130-0001-4a50-bc51-1fa6de000001', 'a1e5e130-0002-4a50-bc51-1fa6de000002', 'Yes, it is available from the 10th.', CURRENT_TIMESTAMP);
