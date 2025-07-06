# Index Performance Analysis

---

## 🧠 Index Strategy

We created indexes on high-usage columns that are commonly used in `WHERE`, `JOIN`, or `ORDER BY` clauses:

| Table      | Column         | Reason                           |
|------------|----------------|----------------------------------|
| `User`     | `email`        | Used for login / lookup          |
| `Booking`  | `user_id`      | Used for joining with `User`     |
| `Booking`  | `property_id`  | Used for joining with `Property` |
| `Property` | `location`     | Used in location-based filters   |
| `Property` | `name`         | Used in ordering results         |

---

## ⚙️ Performance Measurement

We used `EXPLAIN` to compare query performance **before** and **after** adding indexes.

### Example Query

```sql
EXPLAIN
SELECT 
    u.first_name,
    u.last_name,
    COUNT(b.booking_id) AS total_bookings
FROM User u
JOIN Booking b ON u.user_id = b.user_id
GROUP BY u.user_id;
