# SQL Join Queries — Airbnb Database

This file includes examples of SQL join operations using the Airbnb-style database schema.

---

## 1. INNER JOIN: Bookings with Users

This query retrieves all bookings **along with the users who made them**. Only bookings with a valid user will appear.

```sql
SELECT ...
FROM Booking
INNER JOIN User ...

2. LEFT JOIN: Properties with Reviews
This query shows all properties and any associated reviews. Properties with no reviews will still appear.

sql
Copy
Edit
SELECT ...
FROM Property
LEFT JOIN Review ...


3. FULL OUTER JOIN: Users and Bookings
This query returns all users and all bookings, including:

Users without bookings

Bookings not linked to a user

sql
Copy
Edit
SELECT ...
FROM User
LEFT JOIN Booking ...

UNION

SELECT ...
FROM Booking
LEFT JOIN User ...
WHERE ...
