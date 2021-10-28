CREATE TABLE Monthly_Cases As
(SELECT 
    Month(DATE(date)) Month, Year(DATE(date)) Year, SUM(Total_Cases) Total_Cases, SUM(new_deaths) Total_Deaths, SUM(Total_Recovered) Total_Recovered
FROM 
    FIVETRAN_INTERVIEW_DB.GOOGLE_SHEETS.COVID_19_INDONESIA_TARUN_PRAJAPATI 
GROUP BY 
    Month(DATE(date)), Year(DATE(date)) 
ORDER BY   
    Total_Cases DESC
    )