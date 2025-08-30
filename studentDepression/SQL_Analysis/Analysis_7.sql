SELECT 
    `Family History of Mental Illness` AS family_history,
    `Suicidal thoughts ?` AS suicidal_thoughts,
    COUNT(*) AS StudentsEnrolled,
    AVG(Depression) AS Average_depression
FROM 
    students_depression_raw
GROUP BY 
    `Family History of Mental Illness`, `Suicidal thoughts ?`
ORDER BY 
    Average_depression DESC;
