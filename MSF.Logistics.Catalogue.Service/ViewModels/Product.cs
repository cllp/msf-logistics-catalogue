

using System;
using System.Collections.Generic;

namespace MSF.Logistics.Catalogue.Service.ViewModels
{
    public class Product
    {
            public int ProductID { get; set; }

            public int ProductTypeId { get; set; }
            public int SupplierId { get; set; }
            public string ProductName { get; set; }
            public DateTime DateCreated { get; set; }
            public Byte[] Image { get; set; }
            public bool bActive { get; set; }
            public List<Supplier> suppliers { get; set; }
            // public Supplier Suppliers { get; set; }
        

            public Product()
            {
                this.suppliers = new List<Supplier>();
            }

        }
        
    
}
