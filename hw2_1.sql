
SELECT 
	id,
    CASE
		WHEN count_product < 100 THEN "small order"
        WHEN count_product BETWEEN 100 AND 300 THEN "mid order"
        ELSE "big order"
    END AS "Type"
FROM sales;


