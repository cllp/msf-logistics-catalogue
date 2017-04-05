using MSF.Logistics.Catalogue.Core.Interfaces;
using MSF.Logistics.Catalogue.Service.ViewModels;
using System;
using System.Collections.Generic;
using System.Text;

namespace MSF.Logistics.Catalogue.Service
{
    public class ProductServiceMock : IProductService
    {
		public ProductServiceMock()
		{

		}

        public IEnumerable<Product> GetAll()
        {
            //do the mocking
            var viewModelProducts = new List<Product>();

            viewModelProducts.Add(new Product()
            {
                ProductName = "Mock Shelter 1",
                ProductID = 1,
                SupplierId = 1,
                DateCreated = DateTime.Now
            });

            viewModelProducts.Add(new Product()
            {
                ProductName = "Mock Shelter 2",
                ProductID = 2,
                SupplierId = 2,
                DateCreated = DateTime.Now
            });

            return viewModelProducts;
        }

        public Product Get(int id)
        {
			var prodDataModel = new MSF.Logistics.Catalogue.Core.DataModels.Product()
            {
                ProductName = "Mock Shelter 1",
                ProductID = id,
                SupplierId = 1,
                DateCreated = DateTime.Now
            };

			return ProductMapper.MapProduct(prodDataModel);

        }

        public void Add(Product prod)
        {
            throw new NotImplementedException();
        }
    }
}
