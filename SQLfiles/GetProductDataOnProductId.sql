USE [msf-logistics-catalogue]
GO
IF EXISTS ( SELECT name FROM sysobjects
		WHERE name = 'GetProductDataOnProductId' AND type = 'P')
	DROP PROCEDURE GetProductDataOnProductId
GO
USE [msf-logistics-catalogue]
GO
CREATE PROCEDURE GetProductDataOnProductId
	@ProductId int

AS
BEGIN

SELECT ProductData FROM ProductData
WHERE ProductId = @ProductId

END