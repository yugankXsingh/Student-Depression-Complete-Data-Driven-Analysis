SELECT 
    CASE 
        WHEN CGPA >= 9 THEN 'High (9-10)'
        WHEN CGPA >= 7 THEN 'Good (7-8.9)'
        WHEN CGPA >= 5 THEN 'Average (5-6.9)'
        ELSE 'Low (<5)'
    END AS CGPA_group,
    COUNT(*) AS StudentsEnrolled,
    AVG(Depression) AS Average_depression
FROM 
    students_depression_raw
GROUP BY 
    CGPA_group
ORDER BY 
    Average_depression DESC, StudentsEnrolled DESC;
