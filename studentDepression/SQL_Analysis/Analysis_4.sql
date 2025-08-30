-- Identify the 'high-pressure, low-satisfaction' academic programs

SELECT
    Degree,
    COUNT(*) AS number_of_students,
    AVG("Academic Pressure") AS avg_academic_pressure,
    AVG("Study Satisfaction") AS avg_study_satisfaction
FROM
    students_depression_raw
WHERE
    Profession = 'Student'
GROUP BY
    Degree
HAVING
    AVG("Academic Pressure") > 3 AND AVG("Study Satisfaction") < 3.0
ORDER BY
    avg_academic_pressure DESC;