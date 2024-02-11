--1. Which movie has the highest net profit and which has the lowest?
SELECT TOP 10
Title,
BoxOfficeCollection AS Net_Profit
FROM Artificial_Movies_Dataset
ORDER BY BoxOfficeCollection DESC

--Lowest movie net profit.
SELECT TOP 10
title,
BoxOfficeCollection AS Net_Profit
FROM Artificial_Movies_Dataset
ORDER BY BoxOfficeCollection ASC;

--As we can see from our results there are 2 Gladiators. So let`s add the 'Producer' column so we can see which Gladiator movie has the lowest net profit.

SELECT TOP 10
title,
BoxOfficeCollection AS Net_Profit,
Producer
FROM Artificial_Movies_Dataset
ORDER BY BoxOfficeCollection ASC;

--Which movie has the highest budget and which has the lowest?
SELECT TOP 5
Title,
Budget
FROM Artificial_Movies_Dataset
ORDER BY Budget DESC -- There are also 2 Breavehearts. One directed by Steven Spielberg and the other from Quentin Tarantino, so we need to add the 'Director' column


SELECT TOP 5
Title,
Budget,
Director
FROM Artificial_Movies_Dataset
ORDER BY Budget DESC;

--Which directors have directed the most movies?

SELECT TOP 10 
Director, COUNT(*) AS Directors_Movies_Count
FROM Artificial_Movies_Dataset
GROUP BY Director
ORDER BY Directors_Movies_Count DESC;



-- 4. Which movie has the best income-budget ratio? Here we are gonna calculate the ROI(Return on Investment), find the highest ROI value in the list, and lastly find the movie name associated with the highest ROI value.


SELECT TOP 10
    Title,
    ((BoxOfficeCollection - Budget) / Budget) * 100 AS ROI_Percentage
FROM
    Artificial_Movies_Dataset
ORDER BY
    ROI_Percentage DESC;