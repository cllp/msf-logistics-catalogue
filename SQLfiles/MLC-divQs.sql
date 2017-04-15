USE [msf-logistics-catalogue]
GO


SELECT ProductData, p.ProductName FROM ProductData pd
INNER JOIN Product p ON pd.ProductId = p.ProductId
WHERE p.ProductTypeId = 1
AND p.ProductMetaData.value('(/ShelterMetaData/Lifespan)[1]', 'decimal') >= 32
AND p.ProductMetaData.value('(/ShelterMetaData/Lifespan)[1]', 'decimal') < 34
AND p.ProductMetaData.value('(/ShelterMetaData/Setuptime)[1]', 'decimal') > 5
AND p.ProductMetaData.value('(/ShelterMetaData/Setuptime)[1]', 'decimal') <= 48


--SELECT * FROM Product