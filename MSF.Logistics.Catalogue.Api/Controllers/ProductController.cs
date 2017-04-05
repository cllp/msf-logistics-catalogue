using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using MSF.Logistics.Catalogue.Service;
using MSF.Logistics.Catalogue.Service.ViewModels;

namespace MSF.Logistics.Catalogue.Api.Controllers
{
    [Route("api/products")]
    public class ProductController : Controller
    {
        private static IProductService _productService = ServiceFactory.ProductService;
        // GET api/values
       
        [HttpGet]
        //[Route("products")]
        public IEnumerable<Product> Get()
        {
            return _productService.GetAll();
        }

        // GET api/values/5
        [HttpGet("{id}")]
        public Product Get(int id)
        {
            return _productService.Get(id);
        }

        // POST api/values
        [HttpPost]
        public void Post([FromBody]string value)
        {
        }

        // PUT api/values/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/values/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
