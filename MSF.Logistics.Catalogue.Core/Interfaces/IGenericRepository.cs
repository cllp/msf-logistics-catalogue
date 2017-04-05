using System.Collections.Generic;

namespace MSF.Logistics.Catalogue.Core.Interfaces
{
    public interface IGenericRepository<TEntity> where TEntity : class
    {
        //Get a product by ID
        TEntity Get(int Id);
        //Get all products
        IEnumerable<TEntity> GetAll();
        //CRUD operational support
        void Add(TEntity entity);
        void Delete(TEntity entity);
        void Update(TEntity entity);
    }
}
