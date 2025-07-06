-- 1. Drop if it already exists
DROP TABLE IF EXISTS Booking CASCADE;

-- 2. Create partitioned parent table
CREATE TABLE Booking (
    booking_id UUID PRIMARY KEY,
    property_id UUID REFERENCES Property(property_id),
    user_id UUID REFERENCES User(user_id),
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL NOT NULL,
    status ENUM('pending', 'confirmed', 'canceled') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) PARTITION BY RANGE (start_date);


-- 3. Create child partitions based on date ranges (yearly partitions)
CREATE TABLE Booking_2022 PARTITION OF Booking
    FOR VALUES FROM ('2022-01-01') TO ('2023-01-01');

CREATE TABLE Booking_2023 PARTITION OF Booking
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE Booking_2024 PARTITION OF Booking
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

CREATE TABLE Booking_2025 PARTITION OF Booking
    FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');


-- 4. Add an index on start_date in each child partition (optional but helps with filtering)
CREATE INDEX idx_booking_2022_start_date ON Booking_2022(start_date);
CREATE INDEX idx_booking_2023_start_date ON Booking_2023(start_date);
CREATE INDEX idx_booking_2024_start_date ON Booking_2024(start_date);
CREATE INDEX idx_booking_2025_start_date ON Booking_2025(start_date);


-- 5. Sample performance test query
EXPLAIN ANALYZE
SELECT *
FROM Booking
WHERE start_date BETWEEN '2024-01-01' AND '2024-12-31';
