SELECT 
  LEFT(Filing_Date, 4) AS year,
  SUBSTR(Filing_Date, 5, 2) AS month,
  COUNT(Filing_Date) AS total_patent
FROM `patents-public-data.uspto_oce_cancer.publications`
WHERE Patent_Title LIKE '%data%' 
  AND CAST(LEFT(Filing_Date, 4) AS INT64) BETWEEN 2012 AND 2023
GROUP BY year, month
ORDER BY year DESC, month
;