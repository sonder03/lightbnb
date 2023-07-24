Select properties.id As PropertyID, properties.title AS PropertyName, properties.cost_per_night as PropertyCost, avg(property_reviews.rating) as AvgRating
From properties 
LEFT JOIN property_reviews ON properties.id = property_reviews.property_id
where city LIKE '%ancouve%'
GROUP BY properties.id
having  avg(property_reviews.rating) >= 4
Order by cost_per_night 
LIMIt 10;


-- SELECT properties.id, title, cost_per_night, avg(property_reviews.rating) as average_rating
-- FROM properties
-- LEFT JOIN property_reviews ON properties.id = property_id
-- WHERE city LIKE '%ancouv%'
-- GROUP BY properties.id
-- HAVING avg(property_reviews.rating) >= 4
-- ORDER BY cost_per_night
-- LIMIT 10;