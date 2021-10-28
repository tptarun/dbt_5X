(SELECT YEAR(DATE(date)) AS Year, SUM(new_deaths) AS Total_Deaths 
FROM FIVETRAN_INTERVIEW_DB.GOOGLE_SHEETS.COVID_19_INDONESIA_TARUN_PRAJAPATI 
GROUP BY YEAR(DATE(date)));