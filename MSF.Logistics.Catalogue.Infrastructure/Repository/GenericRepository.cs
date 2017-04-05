using MSF.Logistics.Catalogue.Core.Interfaces;
using System;
using System.Collections.Generic;
using System.Text;
using MSF.Logistics.Catalogue.Infrastructure.DbConnection;

namespace MSF.Logistics.Catalogue.Infrastructure.Repository
{
    public class GenericRepository<TEntity> : IGenericRepository<TEntity> where TEntity : class
    {

        //Implement the interface members whenever necessary
        public void Add(TEntity entity)
        {
            throw new NotImplementedException();
        }

        public void Delete(TEntity entity)
        {
            throw new NotImplementedException();
        }

        public TEntity Get(int Id)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<TEntity> GetAll()
        {
            throw new NotImplementedException();
        }

        public void Update(TEntity entity)
        {
            throw new NotImplementedException();
        }
    }
}
