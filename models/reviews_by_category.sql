SELECT
    price,
    ROUND(AVG(rating), 2) AS average_rating,
    SUM(review_count) as total_reviews
FROM `quandoo-data-engineering.restaurants_processed.processed_data` 
WHERE price != 'nan'
GROUP BY price
ORDER BY price DESC