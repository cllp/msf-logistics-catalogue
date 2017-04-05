using MSF.Logistics.Catalogue.Core.Interfaces;
using MSF.Logistics.Catalogue.Service.ViewModels;
using System;
using System.Collections.Generic;
using System.Text;

namespace MSF.Logistics.Catalogue.Service
{
    public class ProductService : IProductService
    {
        //IUnitOfWork _unitOfWork;
        //public ProductService(IUnitOfWork unitOfWork)
        //{
        //    _unitOfWork = unitOfWork;
        //}
        private readonly IProductRepository _productRepository;

        public IEnumerable<Product> GetAll()
        {
            //return _unitOfWork.ProductRepository.GetAll();
            //var products = _productRepository.GetAll();
            //do the mapping
            throw new NotImplementedException();
        }

        public Product Get(int id)
        {
            
            throw new NotImplementedException();
            //return _unitOfWork.ProductRepository.Get(id);
        }
        
        /*public MemoryStream GetProductPhoto(int productPhotoID)
        {
            return _unitOfWork.ProductRepository.GetProductPhoto(productPhotoID);
        }
         public MemoryStream GetProductThumbNail(int productPhotoID)
         {
             return _unitOfWork.ProductRepository.GetProductThumbnail(productPhotoID);
         }

         /*public Product GetProductInformation()
         {
             return _unitOfWork.ProductRepository.GetProductInformation();
         }*/
        public void Add(Product prod)
        {
            //_unitOfWork.ProductRepository.Add(prod);
            //do the mapping
            throw new NotImplementedException();
            //_productRepository.Add(new Core.DataModels.Product());

        }
    }
}
