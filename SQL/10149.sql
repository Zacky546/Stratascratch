SELECT gender, AVG(review_score) FROM airbnb_reviews as a
LEFT JOIN airbnb_guests as b ON a.from_user = b.guest_id
WHERE from_Type = 'guest'
GROUP BY gender
limit 1;