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
--
SELECT *
FROM data_analyst_jobs
WHERE location = 'TN' 
OR location = 'KY';
-- answer: 27