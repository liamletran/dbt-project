SELECT * FROM {{ref('fct_reviews')}} f
JOIN {{ref('dim_listings_cleansed')}} l
USING (listing_id)
WHERE l.created_at > f.review_date 
