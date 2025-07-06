# Airbnb Database Normalization (3NF Verification)

## Objective
Verify that the Airbnb database schema satisfies Third Normal Form (3NF) and apply normalization principles if necessary.

---

## Step 1: First Normal Form (1NF)

- All attributes in each table are atomic (e.g., no arrays, lists, or sets).
- No repeating groups are present.

The schema is in **1NF**.

---

## Step 2: Second Normal Form (2NF)

- Each table has a single-column primary key (UUID).
- Therefore, no partial dependencies exist.

The schema is in **2NF**.

---

## Step 3: Third Normal Form (3NF)

We verified the absence of **transitive dependencies** in each table:

- `User`: All attributes directly depend on `user_id`.
- `Property`: All fields relate directly to the property, no derived fields.
- `Booking`: Only foreign keys and direct booking data.
- `Payment`: No redundant data from `Booking`.
- `Review`: No attribute depends on another non-key attribute.
- `Message`: Clean foreign key usage without transitive logic.

✅ All tables are in **3NF**.

---

## Final Conclusion

The Airbnb database schema already adheres to the principles of 3NF. No normalization changes are required at this time.
