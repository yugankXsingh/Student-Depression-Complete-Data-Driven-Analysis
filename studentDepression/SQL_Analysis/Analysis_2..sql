-- Calculates the depression rate for combined lifestyle factors.
SELECT
    "Sleep Duration",
    "Dietary Habits",
    COUNT(*) AS number_of_students,
    AVG(CASE WHEN Depression = 1 THEN 1 ELSE 0 END) AS depression_rate
FROM
    students_depression_raw
WHERE Profession = 'Student'
GROUP BY
    "Sleep Duration", "Dietary Habits"
ORDER BY
    depression_rate DESC;