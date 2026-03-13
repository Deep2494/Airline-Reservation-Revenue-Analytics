CREATE TABLE Airports (
    airport_id INT PRIMARY KEY,
    airport_name VARCHAR(100),
    city VARCHAR(50),
    country VARCHAR(50),
    airport_code VARCHAR(10) UNIQUE
);
CREATE TABLE Airplanes (
    airplane_id INT PRIMARY KEY,
    model VARCHAR(100),
    capacity INT,
    manufacture_year INT
);
CREATE TABLE Flights (
    flight_id INT PRIMARY KEY,
    flight_number VARCHAR(20),
    departure_airport INT,
    arrival_airport INT,
    airplane_id INT,
    departure_time DATETIME,
    arrival_time DATETIME,
    base_price DECIMAL(10,2),
    FOREIGN KEY (departure_airport) REFERENCES Airports(airport_id),
    FOREIGN KEY (arrival_airport) REFERENCES Airports(airport_id),
    FOREIGN KEY (airplane_id) REFERENCES Airplanes(airplane_id)
);
CREATE TABLE Passengers (
    passenger_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    date_of_birth DATE,
    nationality VARCHAR(50)
);
CREATE TABLE Bookings (
    booking_id INT PRIMARY KEY,
    passenger_id INT,
    flight_id INT,
    booking_date DATE,
    seat_number VARCHAR(5),
    ticket_price DECIMAL(10,2),
    FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id),
    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id)
);