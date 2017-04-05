using System;
using MSF.Logistics.Catalogue.Core;
using MSF.Logistics.Catalogue.Service;
namespace MSF.Logistics.Catalogue.Service
{
	public static class ProductMapper
	{
		
		public static ViewModels.Product MapProduct(MSF.Logistics.Catalogue.Core.DataModels.Product prod)
		{
			return new ViewModels.Product()
			{
				bActive = prod.bActive,
				DateCreated = prod.DateCreated,
				Image = prod.Image,
				ProductID = prod.ProductID,
				ProductName = prod.ProductName,
				ProductTypeId = prod.ProductTypeId
			};
		}
	}
}
