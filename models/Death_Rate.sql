CREATE TABLE Death_Rate AS
(SELECT
    Location, SUM(Total_Deaths/Population)*100 Death_Rate
FROM
    FIVETRAN_INTERVIEW_DB.GOOGLE_SHEETS.COVID_19_INDONESIA_TARUN_PRAJAPATI
WHERE NOT Location = 'Indonesia'
GROUP BY Location
ORDER BY Death_Rate DESC
)
