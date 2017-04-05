using System.Data;

namespace MSF.Logistics.Catalogue.Infrastructure.DbConnection
{
    public interface IDBConnectionFactory
    {
        IDbConnection Connection { get;  }
    }
}
