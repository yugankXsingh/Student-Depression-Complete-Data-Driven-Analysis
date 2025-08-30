SELECT 
    `Academic Pressure`,
    `Sleep Duration`,
    COUNT(*) AS StudentsEnrolled,
    AVG(Depression) AS Average_depression
FROM 
    students_depression_raw
GROUP BY 
    `Academic Pressure`, `Sleep Duration`
ORDER BY 
    Average_depression DESC, StudentsEnrolled DESC;
