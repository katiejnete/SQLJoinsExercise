-- write your queries here
-- first query
SELECT
    *
FROM
    owners o 
    JOIN vehicles v ON o.id = v.owner_id;

-- second query
SELECT
    first_name,
    last_name,
    COUNT(owner_id) as count
FROM
    owners o
    JOIN vehicles v ON o.id = v.owner_id
GROUP BY
    o.id
ORDER BY
    first_name ASC;

-- third query
SELECT
    first_name,
    last_name,
    ROUND(AVG(price)) as average_price,
    COUNT(owner_id) as count
FROM
    owners o
    JOIN vehicles v ON o.id = v.owner_id
GROUP BY
    o.id
HAVING COUNT(o.id) > 1 AND ROUND(AVG(price)) > 10000
ORDER BY
    first_name DESC;