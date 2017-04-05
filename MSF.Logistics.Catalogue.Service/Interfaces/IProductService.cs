using MSF.Logistics.Catalogue.Service.ViewModels;
using System;
using System.Collections.Generic;
using System.Text;

namespace MSF.Logistics.Catalogue.Service
{
    public interface IProductService
    {
        IEnumerable<Product> GetAll();
        Product Get(int id);
        void Add(Product prod);
        //MemoryStream GetProductThumbnail(int productPhotoID);
        //MemoryStream GetProductPhoto(int productPhotoID);
        
    }
}
