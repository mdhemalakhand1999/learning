/*
 * Two-condition evaluation using or
*/
Intermediate result: WHERE true OR true , Final result: true
Intermediate result: WHERE true OR false , Final result: true
Intermediate result: WHERE false OR true , Final result: true
Intermediate result: WHERE false OR false , Final result: true
-- Using Parentheses
SELECT c.first_name, c.last_name, c.email FROM customer AS c INNER JOIN rental AS r ON c.customer_id = r.customer_id WHERE (c.first_name='HELEN' OR c.last_name='YOUNG' AND c.create_date > '2006-01-01');
-- Using the not Operator
SELECT c.customer_id CUSTOMER_ID, c.store_id STORE_ID, c.first_name username, c.last_name LAST_NAME, c.email USER_EMAIL FROM customer AS c INNER JOIN rental AS r ON c.customer_id = r.customer_id WHERE NOT (C.first_name='SUSAN' OR C.last_name='WILSON' OR c.create_date > '2006-01-01');
SELECT c.first_name, c.email, c.address_id, date(r.rental_date) date_from FROM customer AS c INNER JOIN rental AS r ON c.customer_id = r.customer_id  WHERE c.first_name; <> MICHELLE
-- conditional while
SELECT c.email FROM customer c  INNER JOIN rental r ON c.customer_id = r.customer_id WHERE date(r.rental_date) <> '2005-06-14';
-- DATA MODIFICATION USING EQUALITY CONDITIONS
DELETE FROM rental WHERE year(rental_date) = 2004;
DELETE FROM rental WHERE year(rental_date) <> 2005 AND year(rental_date) <> 2006;
-- rainge condition
SELECT customer_id, rental_date FROM rental WHERE rental_date < '2005-05-25';
-- THE BETWEEN OPERATOR
SELECT customer_id, rental_date FROM rental WHERE rental_date BETWEEN '2005-06-14' AND '2005-06-16';
-- last page: 182