use sakila;
select * from rental;
## 1. Create a table rentals_may to store the data from rental table with information for the month of May.
select * from rental where month(rental_date) = "05";

CREATE TABLE rentals_may (
    rental_id smallint(8) unsigned NOT NULL AUTO_INCREMENT,
    rental_date datetime NOT NULL,
    inventory_id mediumint(10) unsigned NOT NULL,
    customer_id smallint(8) unsigned DEFAULT NULL,
    return_date datetime NOT NULL,
    staff_id tinyint(3) unsigned DEFAULT NULL,
    last_update timestamp DEFAULT NULL,
    weekday int(255) DEFAULT NULL,
    day_type varchar(20) DEFAULT NULL,
    CONSTRAINT PRIMARY KEY (rental_id),
    CONSTRAINT FOREIGN KEY (customer_id) REFERENCES customer (customer_id) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1003 DEFAULT CHARSET=utf8;
## 2. Insert values in the table rentals_may using the table rental, filtering values only for the month of May.
## I've used Table Data import Wizard after exporting a CSV file on my desktop filtering the values from the month of May using this query:
## select * from rental where month(rental_date) = "05";
select * from rentals_may;

## 3. Create a table rentals_june to store the data from rental table with information for the month of June.
select * from rental where month(rental_date) = "06";
CREATE TABLE rentals_june (
    rental_id smallint(8) unsigned NOT NULL AUTO_INCREMENT,
    rental_date datetime NOT NULL,
    inventory_id mediumint(10) unsigned NOT NULL,
    customer_id smallint(8) unsigned DEFAULT NULL,
    return_date datetime NOT NULL,
    staff_id tinyint(3) unsigned DEFAULT NULL,
    last_update timestamp DEFAULT NULL,
    weekday int(255) DEFAULT NULL,
    day_type varchar(20) DEFAULT NULL,
    CONSTRAINT PRIMARY KEY (rental_id),
    CONSTRAINT FOREIGN KEY (customer_id) REFERENCES customer (customer_id) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1003 DEFAULT CHARSET=utf8;

## 4. Insert values in the table rentals_june using the table rental, filtering values only for the month of June.
## I've used Table Data import Wizard after exporting a CSV file on my desktop filtering the values from the month of June using this query:
## select * from rental where month(rental_date) = "06";
select * from rentals_june;

## 5. Check the number of rentals for each customer for May.
select customer_id, count(*) as num_rentals
from rentals_may
group by customer_id;

## 6. Check the number of rentals for each customer for June.
select customer_id, count(*) as num_rentals
from rentals_june
group by customer_id;

## 7. Create a Python connection with SQL database and retrieve the results of the last two queries (also mentioned below) as dataframes:
## Check the number of rentals for each customer for May
## Check the number of rentals for each customer for June
## Hint: You can store the results from the two queries in two separate dataframes.

## I'VE DONE IT IN THE JUPYTER NOTEBOOK ATTACHED IN MY REPOSITORY

## 8 . Write a function that checks if customer borrowed more or less films in the month of June as compared to May.
## Hint: For this part, you can create a join between the two dataframes created before, using the merge function available 
## for pandas dataframes.

## I'VE DONE IT IN THE JUPYTER NOTEBOOK ATTACHED IN MY REPOSITORY



