CREATE TABLE Indonesia_Cases AS
(SELECT
    Date, Location, Total_Deaths, Total_Recovered, Total_Active_Cases, Total_Cases, Case_Fatality_Rate, Case_Recovered_Rate, Growth_Factor_of_New_Cases, Growth_Factor_of_New_Deaths
FROM
    FIVETRAN_INTERVIEW_DB.GOOGLE_SHEETS.COVID_19_INDONESIA_TARUN_PRAJAPATI
WHERE Location = 'Indonesia'
)