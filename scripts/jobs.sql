-- q1
SELECT COUNT(*)
FROM data_analyst_jobs;
-- answer: 1793

-- q2
SELECT *
FROM data_analyst_jobs
LIMIT 10;
-- answer:ExxonMobil

--q3	
SELECT *
FROM data_analyst_jobs
WHERE location = 'TN';
-- answer: 21

--q3cont.
SELECT *
FROM data_analyst_jobs
WHERE location = 'TN' 
OR location = 'KY';
-- answer: 27

--q4
SELECT *
FROM data_analyst_jobs
WHERE location = 'TN' 
AND star_rating >4;
--answer: 3

--q5
SELECT *
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000;
--answer: 151

--q6
SELECT AVG(star_rating) AS avg_rating, location AS state 
FROM data_analyst_jobs
GROUP BY location;
--answer: KS

--q7
SELECT DISTINCT title
FROM data_analyst_jobs;
-- answer: 881

--q8
SELECT DISTINCT title
FROM data_analyst_jobs
WHERE location = 'CA';
-- answer: 230 

--q9
SELECT company, AVG(star_rating)
FROM data_analyst_jobs
WHERE review_count >5000
GROUP BY company;
--answer: 41

--q10
SELECT company, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
WHERE review_count >5000
GROUP BY company
ORDER BY avg_rating DESC;
--answer: General Motors, rating of 4.199

--q11
SELECT *
FROM data_analyst_jobs
WHERE title LIKE '%Analyst%';
--answer: 1636

--q12
SELECT title
FROM data_analyst_jobs
WHERE title NOT ILIKE '%Analyst%'
AND title NOT ILIKE '%Analytics%';
--answer: 4, Tableau 

