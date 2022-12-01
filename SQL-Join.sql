use sakila;

#1. List the number of films per category.
select category_id, count(film_id) from film_category
group by category_id;

#2. Display the first and the last names, as well as the address, of each staff member.
select first_name, last_name, a.address
from sakila.staff s
join sakila.address a on s.address_id = a.address_id;

#3. Display the total amount rung up by each staff member in August 2005.
select s.staff_id, sum(amount)
from sakila.staff s
join sakila.payment p on s.staff_id = p.staff_id
group by s.staff_id;

#4. List all films and the number of actors who are listed for each film.
select f.film_id, count(fa.actor_id)
from sakila.film f
join sakila.film_actor fa on f.film_id = fa.film_id
group by f.film_id;

#5. Using the payment and the customer tables as well as the JOIN command, list the total amount paid by each customer. List the customers alphabetically by their last names.
select c.last_name, sum(p.amount)
from sakila.customer c
join sakila.payment p on c.customer_id = p.customer_id
group by c.customer_id
order by c.last_name;