
-- Calculates the depression rate for each degree.

SELECT
    Degree,
    COUNT(*) AS number_of_students,
    AVG(CASE WHEN Depression = 1 THEN 1 ELSE 0 END) AS depression_rate,
    AVG("Academic Pressure") AS avg_academic_pressure,
    AVG(CGPA) AS avg_cgpa,
    AVG(CASE
        WHEN "Sleep Duration" = "'Less than 5 hours'" THEN 0
        WHEN "Sleep Duration" = "'5-6 hours'" THEN 1
        WHEN "Sleep Duration" = "'7-8 hours'" THEN 2
        WHEN "Sleep Duration" = "'More than 8 hours'" THEN 3
    END) AS avg_sleep_score
FROM
    students_depression_raw
WHERE
    -- We only analyze students from the top 15 most common degrees for statistical significance
    Degree IN (SELECT Degree FROM students_depression_raw GROUP BY Degree ORDER BY COUNT(*) DESC LIMIT 15)
    AND Profession = 'Student'
GROUP BY
    Degree
ORDER BY
    depression_rate DESC;