/* Luis */


use sakila; 

##Q1
select 
	c.name
	, count(fc.film_id) as 'num_films'
from film_category fc 
	inner join category c on fc.category_id=c.category_id
group by c.name
order by num_films desc
;

##Q2
select 
	s.first_name
	, s.last_name
	, s.email
	, a.address
	, a.address2
from staff s
	inner join address a on s.address_id=a.address_id 

;

##Q3
select 
	s.first_name
	,s.last_name
	,sum(p.amount) as 'amount'
from  staff s
	inner join	payment p on s.staff_id=p.staff_id
where year(p.payment_date) = 2005 and
month(p.payment_date)=8
group by s.first_name,s.last_name
;

##Q4
select 
	f.title
	,count(fa.actor_id) as 'num_actors'
from film f
	left join film_actor fa on f.film_id=fa.film_id
group by    f.title 
;   
 
##Q5
select
	c.first_name
	,c.last_name
	,sum(p.amount) as 'amount'
from customer c
	left join payment p on c.customer_id=p.customer_id
group by c.first_name, c.last_name
order by last_name
;