SELECT 
    City,
    AVG(Depression) AS Average_depression,
    AVG(`Financial Stress`) AS Avg_Financial_Stress,
    AVG(`Work/Study Hours`) AS Avg_Study_Hours,
    COUNT(*) AS StudentsEnrolled
FROM 
    students_depression_raw
GROUP BY 
    City
HAVING COUNT(*) > 30
ORDER BY 
    Average_depression DESC
LIMIT 15;
