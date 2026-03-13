 
-- View All Flights
SELECT * FROM Flights; 


 -- List All Flights with Departure and Arrival City
 SELECT f.flight_number,
       a1.city AS departure_city,
       a2.city AS arrival_city,
       f.base_price
FROM Flights f
JOIN Airports a1 ON f.departure_airport = a1.airport_id
JOIN Airports a2 ON f.arrival_airport = a2.airport_id;


-- Total Revenue per Flight
SELECT flight_id,
       SUM(ticket_price) AS total_revenue
FROM Bookings
GROUP BY flight_id;


-- Total Passengers per Flight
SELECT flight_id,
       COUNT(passenger_id) AS total_passengers
FROM Bookings
GROUP BY flight_id;


-- Flights with More Than 1 Passenger
SELECT flight_id,
       COUNT(*) AS passenger_count
FROM Bookings
GROUP BY flight_id
HAVING COUNT(*) > 1;


-- Average Ticket Price per Flight
SELECT flight_id,
       AVG(ticket_price) AS avg_price
FROM Bookings
GROUP BY flight_id;


-- Passenger Travel History 
SELECT p.first_name,
       f.flight_number,
       f.departure_time
FROM Passengers p
JOIN Bookings b ON p.passenger_id = b.passenger_id
JOIN Flights f ON b.flight_id = f.flight_id
ORDER BY p.first_name;


-- Most Expensive Booking
SELECT *
FROM Bookings
WHERE ticket_price = (SELECT MAX(ticket_price) FROM Bookings); 


-- Monthly Revenue
SELECT MONTH(booking_date) AS month,
       SUM(ticket_price) AS total_revenue
FROM Bookings
GROUP BY MONTH(booking_date); 


-- Aircraft Utilization (Flights per Airplane)
SELECT airplane_id,
       COUNT(*) AS total_flights
FROM Flights
GROUP BY airplane_id;


-- Rank Flights by Revenue (Window Function)
SELECT flight_id,
       SUM(ticket_price) AS revenue,
       RANK() OVER (ORDER BY SUM(ticket_price) DESC) AS revenue_rank
FROM Bookings
GROUP BY flight_id;


-- Find Flights Above Average Revenue
SELECT flight_id,
       SUM(ticket_price) AS revenue
FROM Bookings
GROUP BY flight_id
HAVING SUM(ticket_price) > (
    SELECT AVG(ticket_price) FROM Bookings
);


-- Top 2 Highest Paying Passengers
SELECT passenger_id,
       SUM(ticket_price) AS total_spent
FROM Bookings
GROUP BY passenger_id
ORDER BY total_spent DESC
LIMIT 2; 


-- Flights to International Destination
SELECT f.flight_number,
       a.country
FROM Flights f
JOIN Airports a ON f.arrival_airport = a.airport_id
WHERE a.country <> 'India';


 -- Load Factor (Passenger Count vs Capacity)
 SELECT f.flight_id,
       COUNT(b.passenger_id) AS booked_seats,
       a.capacity,
       (COUNT(b.passenger_id) * 100.0 / a.capacity) AS load_percentage
FROM Flights f
JOIN Airplanes a ON f.airplane_id = a.airplane_id
LEFT JOIN Bookings b ON f.flight_id = b.flight_id
GROUP BY f.flight_id, a.capacity;


  
 
















