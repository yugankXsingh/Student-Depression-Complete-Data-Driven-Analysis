-- This SQL script cleans and transforms the raw student data for analysis.

SELECT
    -- Select and rename columns for clarity
    Gender,
    Age, 
    City,
    "Academic Pressure",
    CGPA,
    "Study Satisfaction",
    "Sleep Duration",
    "Dietary Habits",
    Degree,
    "Work/Study Hours",
    "Financial Stress",
    Depression,

    -- Use CASE statements to encode binary columns into 0s and 1s
    CASE
        WHEN Gender = 'Male' THEN 1
        WHEN Gender = 'Female' THEN 0
    END AS gender_encoded,

    CASE
        WHEN "Suicidal thoughts ?" = 'Yes' THEN 1
        WHEN "Suicidal thoughts ?" = 'No' THEN 0
    END AS suicidal_thoughts_encoded,

    CASE
        WHEN "Family History of Mental Illness" = 'Yes' THEN 1
        WHEN "Family History of Mental Illness" = 'No' THEN 0
    END AS family_history_encoded,

    -- Use CASE statements for Ordinal Encoding
    CASE
        WHEN "Sleep Duration" = "'Less than 5 hours'" THEN 0
        WHEN "Sleep Duration" = "'5-6 hours'" THEN 1
        WHEN "Sleep Duration" = "'7-8 hours'" THEN 2
        WHEN "Sleep Duration" = "'More than 8 hours'" THEN 3
    END AS sleep_encoded,

    --  Create the 'study_hours_category' column
    CASE
        WHEN "Work/Study Hours" <= 4 THEN 'Low (0-4 hours)'
        WHEN "Work/Study Hours" <= 7 THEN 'Medium (5-7 hours)'
        WHEN "Work/Study Hours" <= 10 THEN 'High (8-10 hours)'
        ELSE 'Very High (10+ hours)'
    END AS study_hours_category,

    CASE
        WHEN "Dietary Habits" = 'Unhealthy' THEN 0
        WHEN "Dietary Habits" = 'Moderate' THEN 1
        WHEN "Dietary Habits" = 'Healthy' THEN 2
    END AS diet_encoded,

    -- Use a CASE statement for Binning
    CASE
        WHEN "Financial Stress" >= 3 THEN 'High'
        ELSE 'Low'
    END AS financial_stress_group

FROM
    students_depression_raw
WHERE
    -- Filter the data to only include students
    Profession = 'Student';