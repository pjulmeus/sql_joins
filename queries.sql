-- write your queries here

SELECT * FROM owners                                                                                                                                                                                 LEFT JOIN vehicles 
ON owners.id = vehicles.owner_id;

SELECT o.first_name, o.last_name, COUNT(v.owner_id) FROM owners o JOIN vehicles v ON o.id =v.owner_id                                                                                       GROUP BY o.first_name, o.last_name  
ORDER BY o.first_name ;

SELECT o.first_name, o.last_name, COUNT(v.owner_id) AS count , AVG(v.price) 
AS average_price FROM owners o 
JOIN vehicles v ON o.id =v.owner_id                                                       GROUP BY o.first_name, o.last_name 
ORDER BY o.first_name;

SELECT o.first_name, o.last_name, COUNT(v.owner_id), ROUND(AVG(v.price)) AS average_price 
FROM owners o 
JOIN vehicles v ON o.id =v.owner_id                                                          GROUP BY o.first_name, o.last_name 
HAVING COUNT(v.owner_id) > 1 AND ROUND(AVG(v.price)) > 10000 ORDER BY o.first_name desc;