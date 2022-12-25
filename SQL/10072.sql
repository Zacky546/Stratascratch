select from_type, ROUND(AVG(review_score),2) as avg_review_score FROM airbnb_reviews
GROUP BY from_type
ORDER BY ROUND(AVG(review_score),2) DESC
LIMIT 1