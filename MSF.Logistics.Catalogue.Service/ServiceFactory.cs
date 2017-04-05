using System;
using System.Collections.Generic;
using System.Text;

namespace MSF.Logistics.Catalogue.Service
{
    public static class ServiceFactory
    {
        public static IProductService ProductService
        {
            get
            {
                return new ProductServiceMock();
            }

        }

    }
}
