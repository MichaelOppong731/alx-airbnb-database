# Performance Monitoring & Refinement


---

## 🎯 Objective

Continuously improve database query performance by analyzing execution plans and adjusting schema/indexes accordingly.

---

## 🧪 Monitored Queries and Optimizations

### 1. Query: Join Bookings with User, Property, Payment

```sql
EXPLAIN ANALYZE
SELECT 
    b.booking_id, u.email, p.name AS property_name, pay.amount
FROM Booking b
JOIN User u ON b.user_id = u.user_id
JOIN Property p ON b.property_id = p.property_id
LEFT JOIN Payment pay ON b.booking_id = pay.booking_id
WHERE b.status = 'confirmed';
