CREATE TABLE Location_Cases AS
(SELECT 
    DATE, Location, Total_Deaths, Total_Recovered, Total_Active_Cases, Total_Cases
FROM
    FIVETRAN_INTERVIEW_DB.GOOGLE_SHEETS.COVID_19_INDONESIA_TARUN_PRAJAPATI
WHERE NOT Location = 'Indonesia' 
)