CREATE TABLE Yearly_Cases AS
(SELECT 
    YEAR(DATE(date)) AS Year, SUM(new_deaths) Total_Deaths, SUM(Total_Cases) Total_Cases, SUM(Total_Recovered) Total_Recovered
FROM 
    FIVETRAN_INTERVIEW_DB.GOOGLE_SHEETS.COVID_19_INDONESIA_TARUN_PRAJAPATI 
GROUP BY 
    YEAR(DATE(date)))

