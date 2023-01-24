-- write your queries here
SELECT * FROM owners owner FULL OUTER JOIN vehicles vehicle ON owner.id = vehicle.owner_id;

SELECT (first_name, last_name, COUNT(owner_id)) FROM owners owner
    JOIN vehicles vehicle ON owner.id = vehicle.owner_id
    GROUP BY (first_name, last_name)
    ORDER BY first_name;

SELECT (first_name, last_name, ROUND(AVG(price)) as avg_pri, COUNT(owner_id)) FROM owners owner
    JOIN vehicles vehicle ON onwer.id = vehicle.owner_id
    GROUP BY (first_name, last_name)
    HAVING ROUND(avg_pri) > 10000
    ORDER BY first_name DESC;