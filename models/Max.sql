
(SELECT SUM(Total_Cases) Total_Cases
FROM FIVETRAN_INTERVIEW_DB.GOOGLE_SHEETS.COVID_19_INDONESIA_TARUN_PRAJAPATI
GROUP BY 
    Month(DATE(date)), Year(DATE(date)) 
ORDER BY   
    Total_Cases DESC
    LIMIT 1
    )
