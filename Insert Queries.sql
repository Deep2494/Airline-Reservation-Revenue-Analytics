INSERT INTO Airports VALUES
(1, 'Chhatrapati Shivaji International Airport', 'Mumbai', 'India', 'BOM'),
(2, 'Indira Gandhi International Airport', 'Delhi', 'India', 'DEL'),
(3, 'Kempegowda International Airport', 'Bangalore', 'India', 'BLR'),
(4, 'Dubai International Airport', 'Dubai', 'UAE', 'DXB');
INSERT INTO Airplanes VALUES
(1, 'Boeing 737', 180, 2018),
(2, 'Airbus A320', 160, 2019),
(3, 'Boeing 787', 250, 2020);
INSERT INTO Flights VALUES
(1, 'SK101', 1, 2, 1, '2023-07-01 08:00:00', '2023-07-01 10:00:00', 5000),
(2, 'SK102', 2, 3, 2, '2023-07-02 09:00:00', '2023-07-02 11:30:00', 4500),
(3, 'SK103', 1, 4, 3, '2023-07-03 06:00:00', '2023-07-03 09:00:00', 15000);
INSERT INTO Passengers VALUES
(1, 'Rahul', 'Sharma', 'Male', '1995-05-10', 'Indian'),
(2, 'Priya', 'Mehta', 'Female', '1998-08-15', 'Indian'),
(3, 'Amit', 'Verma', 'Male', '1985-03-22', 'Indian');
INSERT INTO Bookings VALUES
(1, 1, 1, '2023-06-20', '12A', 5200),
(2, 2, 1, '2023-06-21', '14B', 5000),
(3, 3, 2, '2023-06-25', '10C', 4500),
(4, 1, 3, '2023-06-28', '2A', 15500);
