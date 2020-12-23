-- select actor.first_name, count(actor_id) as film_count
-- from film_actor
-- inner join actor ON actor.actor_id = film_actor.actor_id
-- group by actor_id
-- order by film_count DESC

-- select actor_id, actor.first_name, count(actor_id) as film_count
-- from film_actor
-- inner join actor ON actor.actor_id = film_actor.actor_id
-- group by actor_id
-- order by film_count DESC;

SELECT CONCAT(actor.first_name, '', actor.last_name), film.title
FROM film_actor
INNER JOIN actor ON actor.actor_id = film_actor.actor_id
INNER JOIN film ON film.film_id = film_actor.film_id