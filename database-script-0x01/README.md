# Airbnb Database Schema

## Overview

This project defines the SQL schema for an Airbnb-style application with core entities like users, properties, bookings, payments, reviews, and messages. The schema is fully normalized to **Third Normal Form (3NF)** and includes appropriate constraints, foreign key relationships, and indexes.

---

## Tables

### 1. `User`
Stores all users of the platform (guests, hosts, admins).

### 2. `Property`
Represents listings created by hosts.

### 3. `Booking`
Captures reservations made by guests for specific properties.

### 4. `Payment`
Handles payment transactions linked to bookings.

### 5. `Review`
Records reviews left by users for properties.

### 6. `Message`
Enables communication between users.

---

## Highlights

- UUIDs used as primary keys
- ENUM fields implemented via CHECK constraints
- All timestamps default to `CURRENT_TIMESTAMP`
- Indexed foreign keys and frequently queried columns

---

## Normalization

All tables comply with:

- 1NF: Atomic columns
- 2NF: Full functional dependency on primary keys
- 3NF: No transitive dependencies

---

## How to Use

- Run the SQL statements in a PostgreSQL-compatible database
- Tables will be created with all constraints and indexes