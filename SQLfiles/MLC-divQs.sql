USE [msf-logistics-catalogue]
GO


SELECT ProductData, p.ProductName, p.ProductMetaData.value('declare namespace ps="http://tempuri.org/XMLSchema.xsd"; (/ps:Product/ps:ShelterMetaData/ps:Lifespan)[1]', 'int') FROM ProductData pd
INNER JOIN Product p ON pd.ProductId = p.ProductId
WHERE p.ProductTypeId = 1
AND p.ProductMetaData.value('declare namespace ps="http://tempuri.org/XMLSchema.xsd"; (/ps:Product/ps:ShelterMetaData/ps:Lifespan)[1]', 'int') >= 12
AND p.ProductMetaData.value('declare namespace ps="http://tempuri.org/XMLSchema.xsd"; (/ps:Product/ps:ShelterMetaData/ps:Lifespan)[1]', 'int') <= 89
AND p.ProductMetaData.value('declare namespace ps="http://tempuri.org/XMLSchema.xsd"; (/ps:Product/ps:ShelterMetaData/ps:Setuptime)[1]', 'int') >= 45
AND p.ProductMetaData.value('declare namespace ps="http://tempuri.org/XMLSchema.xsd"; (/ps:Product/ps:ShelterMetaData/ps:Setuptime)[1]', 'int') <= 67
AND p.ProductMetaData.value('declare namespace ps="http://tempuri.org/XMLSchema.xsd"; (/ps:Product/ps:ShelterMetaData/ps:CostEffectiveness)[1]', 'int') >= 37
AND p.ProductMetaData.value('declare namespace ps="http://tempuri.org/XMLSchema.xsd"; (/ps:Product/ps:ShelterMetaData/ps:CostEffectiveness)[1]', 'int') <= 87
AND p.ProductMetaData.value('declare namespace ps="http://tempuri.org/XMLSchema.xsd"; (/ps:Product/ps:ShelterMetaData/ps:ThermalValue)[1]', 'int') >= 1
AND p.ProductMetaData.value('declare namespace ps="http://tempuri.org/XMLSchema.xsd"; (/ps:Product/ps:ShelterMetaData/ps:ThermalValue)[1]', 'int') <= 12
AND p.ProductMetaData.value('declare namespace ps="http://tempuri.org/XMLSchema.xsd"; (/ps:Product/ps:ShelterMetaData/ps:SizeOfInfrastructure)[1]', 'int') >= 70
AND p.ProductMetaData.value('declare namespace ps="http://tempuri.org/XMLSchema.xsd"; (/ps:Product/ps:ShelterMetaData/ps:SizeOfInfrastructure)[1]', 'int') <= 89


--SELECT p.*, pd.ProductData FROM Product p
--INNER JOIN ProductData pd ON p.ProductId = pd.ProductId

--turn on statistics time
--SET STATISTICS TIME ON
--GO 

--CREATE PRIMARY XML INDEX [IX_ProductMetaData] 
--ON Product(ProductMetaData)
--GO