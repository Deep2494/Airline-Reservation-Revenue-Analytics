# ✈️ Airline Reservation & Revenue Analytics (SQL Project)

## 📌 Project Overview
This project demonstrates how SQL can be used to analyze airline operational data such as flights, passengers, bookings, and revenue.  
The goal is to generate insights that help airlines understand passenger demand, evaluate route performance, and optimize aircraft utilization.

This project was created as part of a **Data Analyst course project** to showcase database design and SQL data analysis skills.

---

## 🎯 Objectives
- Design a relational database for an airline reservation system
- Perform SQL-based data analysis
- Identify revenue trends and passenger demand
- Analyze aircraft utilization and route performance
- Demonstrate advanced SQL concepts used in real-world analytics

---

## 🗄️ Database Schema

The database consists of the following tables:

### 1. Airports
Stores information about airport locations.

| Column | Description |
|------|-------------|
| airport_id | Unique airport ID |
| airport_name | Name of the airport |
| city | City of the airport |
| country | Country |
| airport_code | Airport code |

---

### 2. Airplanes
Stores aircraft information.

| Column | Description |
|------|-------------|
| airplane_id | Unique aircraft ID |
| model | Aircraft model |
| capacity | Passenger capacity |
| manufacture_year | Year of manufacture |

---

### 3. Flights
Stores flight schedule details.

| Column | Description |
|------|-------------|
| flight_id | Unique flight ID |
| flight_number | Flight number |
| departure_airport | Departure airport ID |
| arrival_airport | Arrival airport ID |
| airplane_id | Aircraft used |
| departure_time | Flight departure time |
| arrival_time | Flight arrival time |
| base_price | Base ticket price |

---

### 4. Passengers
Stores passenger details.

| Column | Description |
|------|-------------|
| passenger_id | Unique passenger ID |
| first_name | Passenger first name |
| last_name | Passenger last name |
| gender | Gender |
| date_of_birth | DOB |
| nationality | Passenger nationality |

---

### 5. Bookings
Stores ticket booking information.

| Column | Description |
|------|-------------|
| booking_id | Booking ID |
| passenger_id | Passenger reference |
| flight_id | Flight reference |
| booking_date | Date of booking |
| seat_number | Seat number |
| ticket_price | Ticket price |

---

## 🔗 Database Relationships

- **Flights → Airports** (Departure & Arrival)
- **Flights → Airplanes**
- **Bookings → Passengers**
- **Bookings → Flights**

This structure ensures **data integrity using primary and foreign keys.**

---

## 📊 SQL Analysis Performed

The project includes analytical queries such as:

- Flight revenue analysis
- Passenger demand per flight
- Aircraft utilization
- Average ticket pricing
- High-value passengers
- Popular routes
- International flight identification
- Flight load factor calculation

---

## 💻 Example SQL Query

### Total Revenue per Flight

```sql
SELECT flight_id,
       SUM(ticket_price) AS total_revenue
FROM Bookings
GROUP BY flight_id;
