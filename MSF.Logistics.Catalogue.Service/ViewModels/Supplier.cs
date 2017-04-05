namespace MSF.Logistics.Catalogue.Service.ViewModels
{
    public class Supplier
    {
        public int SupplierId { get; set; }
        public string SupplierName { get; set; }
        public string Email { get; set; }

        public string ContactPerson { get; set; }
        public string Website { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string ZipCode { get; set; }
        public string MobilPhone { get; set; }

        // public virtual IEnumerable<Product> product {get; set;}
    }
}
