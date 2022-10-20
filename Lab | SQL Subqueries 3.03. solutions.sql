#How many copies of the film Hunchback Impossible exist in the inventory system?


SELECT * FROM FILM;
SELECT COUNT('Hunchback Impossible');


#List all films whose length is longer than the average of all the films.

FROM film
select length, amount from film.lentgh
where amount > (select avg(lentgh)
from film.lentgh);



Select length from film.title;

where title > (select avg(length)
from film.title)

 
SELECT* title from  film
select title, length group as movie_length 
select movie_length  where lenght is < ( AVG ( length ) from film) ;


#Use subqueries to display all actors who appear in the film Alone Trip.
SELECT * FROM FILM_ACTOR;
SELECT * FROM FILM;
 
SELECT title from film
where title =  'Alone Trip';


#Get name and email from customers from Canada using subqueries. Do the same with joins. Note that to create a join, you will have to identify the correct tables with their primary keys and foreign keys, that will help you get the relevant information.

SELECT * FROM CUSTOMER_list
where country = 'Canada';


SELECT * FROM CUSTOMER;


SELECT  first_name, last_name, email 
FROM Customer AS A
INNER JOIN 
(SELECT * FROM Customer_list where country = 'CANADA') AS B
ON B.id= A.customer_id;alter


#Which are films starred by the most prolific actor? Most prolific actor is defined as the actor that has acted in the most number of films. First you will have to find the most prolific actor and then use that actor_id to find the different films that he/she starred.


SELECT title, actors
FROM film_list, as actor_id
FROM actor INNER JOIN film_actor ON actor.actor_id = film_actor.actor_id
GROUP BY film_actor.actor_id ;


#Films rented by most profitable customer. You can use the customer table and payment table to find the most profitable customer ie the customer that has made the largest sum of payments

select * from customer;
select * from payment;

SELECT  first_name, last_name, email 
FROM Customer AS A
INNER JOIN 
(SELECT * FROM Customer_list ORDER BY COUNT(*) DESC LIMIT 1;) AS B
ON B.id= A.payment;



#Customers who spent more than the average payments.

SELECT first_name, last_name, email 
FROM Customer AS A
INNER JOIN
(SELECT * FROM amount WHERE amount > (SELECT AVG(amount)) as amount_id 
ON B.id= A.paymment;

