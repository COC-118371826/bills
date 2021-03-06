/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;

import dao.ProductDAO;
import java.util.ArrayList;
import model.Product;

/**
 *
 * @author be_me
 */
public class ProductService {
    
    public ArrayList<Product> getHomePageProducts(){
        
        ProductDAO pDao = new ProductDAO();
        return pDao.getTopProducts(9);
        
    }
     public ArrayList<Product> getInfoProducts(){
        
        ProductDAO pDao = new ProductDAO();
        return pDao.getInfoProducts(9);
        
    }
      public ArrayList<Product> getRegProducts(){
        
        ProductDAO pDao = new ProductDAO();
        return pDao.getRegProducts(9);
        
    }
        public ArrayList<Product> getWarningProducts(){
        
        ProductDAO pDao = new ProductDAO();
        return pDao.getWarningProducts(9);
        
    }
         
    

   public void insertProduct(Product nProduct){
        ProductDAO pDao = new ProductDAO();
        pDao.insertProduct(nProduct);
        return;
        
    }
    public ArrayList<Product> getAllProducts(){
       
        ProductDAO pDao = new ProductDAO();
        ArrayList<Product> productList = pDao.getAllProducts();
        return productList;
        
      
    }
      public void updateProduct(Product nProduct){
        ProductDAO pDao = new ProductDAO();
        pDao.updateProduct(nProduct);
        return;
        
    }
       public void deleteProduct(long productId){
        ProductDAO pDao = new ProductDAO();
        pDao.deleteProduct(productId);
        return;
       }
        public Product getProduct(long productId){
       
        ProductDAO pDao = new ProductDAO();
        Product product = pDao.getProductById(productId);
        return product;
}
}
