CREATE TABLE Daily_New_Cases AS
(SELECT 
    DATE(Date) date, SUM(New_Cases) New_Cases, SUM(New_Deaths) New_Deaths, SUM(New_Recovered) New_Recovered
FROM 
    FIVETRAN_INTERVIEW_DB.GOOGLE_SHEETS.COVID_19_INDONESIA_TARUN_PRAJAPATI
GROUP BY date
)