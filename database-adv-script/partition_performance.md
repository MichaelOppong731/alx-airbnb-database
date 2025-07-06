# Partitioning Performance Report — Booking Table



---

## 🎯 Objective

Optimize performance of the large `Booking` table by applying **range partitioning** on the `start_date` column. This approach helps the database skip irrelevant data blocks during queries.

---

## 🧱 Implementation Summary

We partitioned the `Booking` table by year using:

```sql
PARTITION BY RANGE (start_date)
