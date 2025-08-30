-- Financial Stress × Work Hours × Depression

SELECT 
    `Financial Stress`,
    COUNT(*) AS StudentsEnrolled,
    AVG(Depression) AS Average_depression
FROM 
    students_depression_raw
GROUP BY 
    `Financial Stress`
ORDER BY 
    Average_depression DESC, StudentsEnrolled DESC;
