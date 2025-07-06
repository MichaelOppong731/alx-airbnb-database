# Query Optimization — Airbnb Database

This document explains the optimization of a complex SQL query that joins multiple tables in the Airbnb schema.

---

## 🎯 Objective

To improve performance of a query that retrieves bookings along with:

- User details
- Property details
- Payment details

The original query uses multiple joins. We analyze it using `EXPLAIN ANALYZE` and refactor it to reduce execution time.

---

## 🧪 Initial Query

```sql
EXPLAIN ANALYZE
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price,
    b.status,
    u.user_id,
    u.first_name,
    u.last_name,
    u.email,
    p.property_id,
    p.name AS property_name,
    p.location,
    p.price_per_night,
    pay.payment_id,
    pay.amount,
    pay.payment_date,
    pay.payment_method
FROM Booking b
JOIN User u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
LEFT JOIN Payment pay ON b.booking_id = pay.booking_id;
