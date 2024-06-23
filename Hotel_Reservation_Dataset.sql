SELECT * FROM hotel_database.hotel_reservation_dataset;
SELECT COUNT(*) AS total_reservations
FROM hotel_reservation_dataset;
SELECT type_of_meal_plan, COUNT(*) AS count
FROM hotel_reservation_dataset
GROUP BY type_of_meal_plan
ORDER BY count DESC
LIMIT 1;
SELECT AVG(avg_price_per_room) AS average_price
FROM hotel_reservation_dataset
WHERE no_of_children > 0;
SELECT COUNT(*) AS total_reservations
FROM hotel_reservation_dataset
WHERE arrival_date LIKE '%-2018';
SELECT room_type_reserved, COUNT(*) AS count
FROM hotel_reservation_dataset
GROUP BY room_type_reserved
ORDER BY count DESC
LIMIT 1;
SELECT COUNT(*) AS weekend_reservations
FROM hotel_reservation_dataset
WHERE no_of_weekend_nights > 0;
SELECT MAX(lead_time) AS highest_lead_time, MIN(lead_time) AS lowest_lead_time
FROM hotel_reservation_dataset;
SELECT market_segment_type, COUNT(*) AS count
FROM hotel_reservation_dataset
GROUP BY market_segment_type
ORDER BY count DESC
LIMIT 1;
SELECT COUNT(*) AS confirmed_reservations
FROM hotel_reservation_dataset
WHERE booking_status = 'Not_Canceled';
SELECT SUM(no_of_adults) AS total_adults, SUM(no_of_children) AS total_children
FROM hotel_reservation_dataset;
SELECT AVG(no_of_weekend_nights) AS average_weekend_nights
FROM hotel_reservation_dataset
WHERE no_of_children > 0;
SELECT MONTH(STR_TO_DATE(arrival_date, '%d-%m-%Y')) AS month,
YEAR(STR_TO_DATE(arrival_date, '%d-%m-%Y')) AS year,
COUNT(*) AS no_of_reservations
FROM hotel_reservation_dataset
GROUP BY month, year
ORDER BY MONTH, year DESC;
SELECT room_type_reserved, 
       AVG(no_of_weekend_nights + no_of_week_nights) AS average_nights
FROM hotel_reservation_dataset
GROUP BY room_type_reserved;
SELECT room_type_reserved, COUNT(*) AS count, AVG(avg_price_per_room) AS average_price
FROM hotel_reservation_dataset
WHERE no_of_children > 0
GROUP BY room_type_reserved
ORDER BY count DESC
LIMIT 1;
SELECT market_segment_type, AVG(avg_price_per_room) AS average_price
FROM hotel_reservation_dataset
GROUP BY market_segment_type
ORDER BY average_price DESC
LIMIT 1;







