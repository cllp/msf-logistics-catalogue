USE [msf-logistics-catalogue]
GO
IF EXISTS ( SELECT name FROM sysobjects
		WHERE name = 'GetTop10Shelters' AND type = 'P')
	DROP PROCEDURE GetTop10Shelters
GO
USE [msf-logistics-catalogue]
GO

CREATE PROCEDURE [dbo].[GetTop10Shelters]

AS
BEGIN

SELECT TOP 10 ProductData FROM ProductData 
ORDER BY NEWID()

END
GO