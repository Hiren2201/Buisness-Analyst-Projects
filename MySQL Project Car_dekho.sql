SELECT * FROM cars.`car_dekho`;
use cars;
-- Read data--
select * from car_dekho;

-- Total Cars: to get a count of total records -- 
select count(*) from car_dekho;

-- The Manager asked the employee, How many cars will be available in 2023?

select count(*) from car_dekho where year = 2023;

-- The Manager asked the employee, How many cars is available in 2020,2021,2022?

SELECT COUNT(*) FROM car_dekho WHERE year IN (2020, 2021, 2023); 

SELECT COUNT(*) FROM car_dekho where year in (2020,2021,2023) group by year;


-- clint asked me to print the total of all cars by year. i dont see all details.alter

select year, count(*) from car_dekho group by year;

-- Clint asked to car dealer agent how many diesel cars will be there in 2020?
select * from car_dekho;
select count(*) from car_dekho where year =2020 and fuel = "Diesel";


-- Clint requested to car dealer agent how many petrol cars will be there be in 2020?
select count(*) from car_dekho where year =2020 and fuel = "Petrol";

-- the manager told employee to give a print all the fuel cars (petrol,diesel and CNG) come by all years
SELECT year, fuel, COUNT(*) 
FROM car_dekho 
WHERE fuel IN ('Petrol', 'Diesel', 'CNG') 
GROUP BY year, fuel;


-- Manager said there were more than 100 cars in a given year, which year had more than 100 cars?
SELECT year, COUNT(*) as car_count
FROM car_dekho 
WHERE fuel IN ('Petrol', 'Diesel', 'CNG') 
GROUP BY year
HAVING car_count > 100;

SELECT year, COUNT(*) as car_count
FROM car_dekho group by year having count(*)<50;

-- The manager said to the employee all cars count details between 2015 and 2023; we need complete list--
SELECT  COUNT(*) as car_count
FROM car_dekho where year between 2015 and 2023;

-- The manager said to the employee all cars count details between 2015 and 2023; we need complete list--
SELECT *
FROM car_dekho
WHERE year BETWEEN 2015 AND 2023
ORDER BY year asc;

-- END --



