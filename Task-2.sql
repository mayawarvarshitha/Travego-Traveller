#Task 2

# a) How many female passengers traveled a minimum distance of 600KMs ?
select Gender, count(Gender) from passenger where gender = 'F' and distance >=600 ;

# b) Write a query to display the passenger details whose travel distance is greater than 500 and who are traveling in a sleeper bus.
select * from passenger where distance > 500 and bus_type = 'sleeper';

# c) Select passenger names whose names start with the character 'S'.
select * from passenger where passenger_name like 'S%';

# d) Calculate the price charged for each passenger, displaying the Passengername, BoardingCity, DestinationCity, Bustype, and Price in the output.
select Passenger_name, Boarding_City, Destination_City, a.Bus_type,b.Price from Passenger a , Price b where (a.Bus_Type = b.Bus_Type and a.Distance = b.Distance);

#e) What are the passengername(s) and the ticket price for those who traveled 1000 KMs Sitting in a bus?
SELECT passenger.passenger_name,price.price from passenger,price where passenger.distance > 1000 and passenger.bus_type = 'Sitting';

#f) What will be the Sitting and Sleeper bus charge for Pallavi to travel from Bangalore to Panaji ?  
select p.distance, pa.passenger_name, p.bus_type, p.price from passenger pa, price p where (p.distance= pa.Distance and pa.passenger_name = "Pallavi");

# g) Alter the column category with the value "Non-AC" where the Bus_Type is sleeper. 
set sql_safe_updates=0;
update passenger set category = 'NON-AC' where bus_type = 'Sleeper';
select * from passenger;

# h) Delete an entry from the table where the passenger name is Piyush and commit this change in the database.
delete from passenger where passenger_name = 'Piyush';
commit;

# i) Truncate the table passenger and comment on the number of rows in the table.
truncate table passenger;
select * from passenger;

# j) Delete the table passenger from the database.
drop table passenger;