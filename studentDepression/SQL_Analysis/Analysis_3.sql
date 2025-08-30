-- Gender and depression rates

SELECT 
    Gender,
    COUNT(*) AS StudentsEnrolled,
    AVG(Depression)*100 AS Average_depression
FROM 
    students_depression_raw
GROUP BY 
    Gender
ORDER BY 
    Average_depression DESC;
