using MSF.Logistics.Catalogue.Core.DataModels;
using System.Collections.Generic;

namespace MSF.Logistics.Catalogue.Core.Interfaces
{
    public interface IProductRepository
    {
        IEnumerable<Product> GetAll();
        Product Get(int id);
        void Add(Product prod);
        //be implemented later
        //void Delete(int id);
        //new void Update(Product pro);
        //MemoryStream GetProductThumbnail(int productPhotoID);
        // MemoryStream GetProductPhoto(int productPhotoID);
    }


}
