# NoSQL vs RDBMS

**Date**: 2025-07-04  
**Tags**: #tag1 #tag2

## 🔍 What I Learned

### 🌍 Why NoSQL (vs RDBMS)

### 🔻 Disadvantages of RDBMS

- ❌ **Rigid schema** — Hard to evolve with fast-changing apps
- ❌ **Slow JOINs at scale** — Affects performance in high-traffic systems
- ❌ **Vertical scaling** — Limited and expensive
- ❌ **High write contention** — Can lead to locking issues
- ❌ **Poor for unstructured/semi-structured data**
- ❌ **Manual high availability** — Needs extra setup for replication, sharding, etc.

### ✅ Advantages of NoSQL

- ✅ **Schema-less / flexible** — Each item can have its own structure
- ✅ **Horizontal scalability** — Easily handles large datasets and traffic
- ✅ **Built-in high availability & fault tolerance**
- ✅ **Optimized for massive write/read throughput**
- ✅ **Handles unstructured / semi-structured data**
- ✅ **Super-fast key-based access**

---

## 🎯 When to Use What

### ✅ RDBMS is best for:

- Fixed schema: People, IPL Season, Banking data
- Strong relationships, constraints, transactions

### ✅ NoSQL is better for:

- Flexible schema: Game state, Flipkart/Amazon products
- High-scale, real-time data: Logs, sensors, timelines

---

## 🔐 What is ACID?

> ACID = **Atomicity**, **Consistency**, **Isolation**, **Durability**

| Property    | Meaning                                               |
| ----------- | ----------------------------------------------------- |
| Atomicity   | All-or-nothing: partial changes are not allowed       |
| Consistency | DB stays valid before and after transaction           |
| Isolation   | Parallel transactions don’t interfere with each other |
| Durability  | Once committed, changes survive crashes               |

---

## 💬 Common Misconception

> ❌ **ACID ≠ Schema validation**  
> ✅ ACID = Rules for transaction behavior (data integrity), not schema design

---

## 💡 What is a Transaction?

- A **bundle of one or more queries** that:
  - Succeed or fail as one
  - Follow ACID principles
- Used in cases like **money transfer**, **batch updates**, etc.

Example in SQL:

```sql
BEGIN;
UPDATE accounts SET balance = balance - 1000 WHERE id = 'A';
UPDATE accounts SET balance = balance + 1000 WHERE id = 'B';
COMMIT;
```

---

## ⚙️ How Crashes are Handled Safely

### 💾 Write-Ahead Logging (WAL)

- All changes are written to **log file (WAL)** _before_ being applied to DB
- If a crash happens:
  - **No COMMIT yet** → Rollback using WAL
  - **After COMMIT** → WAL ensures durability; replay the transaction

### 🔁 Crash Recovery Logic

| Stage         | Result after crash              |
| ------------- | ------------------------------- |
| Before COMMIT | WAL marks incomplete → Rollback |
| After COMMIT  | WAL marks complete → Redo       |

---

### 🔚 Summary

- RDBMS is great for structured, transactional systems.
- NoSQL is better for dynamic, scalable, high-throughput apps.
- ACID ensures DB integrity, even during crashes.
- WAL makes ACID durability possible by logging everything first.

...

## 🧪 Examples

- 🧠 **RDBMS**
  - Customer management in banks (fixed schema, strong constraints)
  - IPL season schedules and scorecards (structured, time-bound data)
- 🧠 **NoSQL**
  - Game state of a user in an online game (varies per level/user)
  - Amazon/Flipkart product listings (highly variable attributes)
  - Real-time analytics logs (high write volume)

...

## 🧠 Reflections / Notes to Self

- I used to think **ACID meant strong schema**, but now I realize it's about **reliable transaction behavior**, even in a crash.
- Understanding **WAL** was like seeing the engine under the hood — it's smart how databases ensure safety before doing anything risky.
- Realized that **JOINs and normalization** are great until you hit **scaling walls**. NoSQL trades those features for speed and flexibility.
- Knowing when to **choose RDBMS or NoSQL** now feels clearer — it’s not about better or worse, it's about the problem you're solving.

...

## 🔗 References

- [AWS DynamoDB Documentation](https://docs.aws.amazon.com/dynamodb/)
- [Martin Fowler on NoSQL](https://martinfowler.com/articles/nosql-intro.html)
- [ACID Transactions – Wikipedia](https://en.wikipedia.org/wiki/ACID)
- [PostgreSQL WAL Internals](https://www.postgresql.org/docs/current/wal-intro.html)
