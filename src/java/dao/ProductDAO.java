/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Vector;
import model.Product;
import model.User;
import utils.DBManager;

/**
 *
 * @author be_me
 */
public class ProductDAO {
    
    /* Gets number of top products specified */
    /* we are gonna fake this one */
    public ArrayList<Product> getTopProducts(int numProducts){
        
        
        DBManager dm = new DBManager();
        Connection con = dm.getConnection();
        int ProductId = 0;
        String name = null;
        String description = null;
        float price = 0.0f;
        String imageLocation = null;
        String category = null;

        ArrayList<Product> productData = new ArrayList();

        String query = "SELECT * FROM PRODUCTS";
        try {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            int productCount = 0;
            while (rs.next()) {
                if (productCount >= numProducts)
                    break;
                ProductId = (rs.getInt(1));
                name = (rs.getString(2));
                description = (rs.getString(3));
                price = (rs.getFloat(4));
                imageLocation = (rs.getString(5));
                category = (rs.getString(6));
                Product product = new Product();
                product.setId(ProductId);
                product.setName(name);
                product.setDescription(description);
                product.setPrice(price);
                product.setImageLocation(imageLocation);
                product.setCategory(category);
                productData.add(product);
                productCount++;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

      
        return productData;
    }
    public Product getProductById(long productId) {

        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        String name = null;
        String description = null;
        float price = 0.0f;
        String imageLocation = null;
        String category = null;
        Product tempProduct = new Product();

        String query = String.format("SELECT * FROM PRODUCTS WHERE PRODUCT_ID=%d",productId);
        try {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                name = (rs.getString(2));
                description = (rs.getString(3));
                price = (rs.getFloat(4));
                imageLocation = (rs.getString(5));
                category = (rs.getString(6));
                
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
tempProduct.setId(productId);
        tempProduct.setName(name);
     
        tempProduct.setDescription(description);
        tempProduct.setPrice(price);
        tempProduct.setImageLocation(imageLocation);
        tempProduct.setCategory(category);
        return tempProduct;

    }

         public ArrayList<Product> getInfoProducts(int numProducts){
        
        
        DBManager dm = new DBManager();
        Connection con = dm.getConnection();
        int ProductId = 0;
        String name = null;
        String description = null;
        float price = 0.0f;
        String imageLocation = null;
        String category = null;

        ArrayList<Product> productData = new ArrayList();

        String query = "SELECT * FROM PRODUCTS WHERE CATEGORY='Informative'";
        try {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            int productCount = 0;
            while (rs.next()) {
                if (productCount >= numProducts)
                    break;
                ProductId = (rs.getInt(1));
                name = (rs.getString(2));
                description = (rs.getString(3));
                price = (rs.getFloat(4));
                imageLocation = (rs.getString(5));
                category = (rs.getString(6));
                Product product = new Product();
                product.setId(ProductId);
                product.setName(name);
                product.setDescription(description);
                product.setPrice(price);
                product.setImageLocation(imageLocation);
                product.setCategory(category);
                productData.add(product);
                productCount++;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

      
        return productData;
        
         
        
    }
         public ArrayList<Product> getRegProducts(int numProducts){
        
        
        DBManager dm = new DBManager();
        Connection con = dm.getConnection();
        int ProductId = 0;
        String name = null;
        String description = null;
        float price = 0.0f;
        String imageLocation = null;
        String category = null;

        ArrayList<Product> productData = new ArrayList();

            String query = "SELECT * FROM PRODUCTS WHERE CATEGORY='Regulatory'";
        try {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            int productCount = 0;
            while (rs.next()) {
                if (productCount >= numProducts)
                    break;
                ProductId = (rs.getInt(1));
                name = (rs.getString(2));
                description = (rs.getString(3));
                price = (rs.getFloat(4));
                imageLocation = (rs.getString(5));
                category = (rs.getString(6));
                Product product = new Product();
                product.setId(ProductId);
                product.setName(name);
                product.setDescription(description);
                product.setPrice(price);
                product.setImageLocation(imageLocation);
                product.setCategory(category);
                productData.add(product);
                productCount++;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

      
        return productData;
}
          public ArrayList<Product> getWarningProducts(int numProducts){
        
        
        DBManager dm = new DBManager();
        Connection con = dm.getConnection();
        int ProductId = 0;
        String name = null;
        String description = null;
        float price = 0.0f;
        String imageLocation = null;
        String category = null;

        ArrayList<Product> productData = new ArrayList();

            String query = "SELECT * FROM PRODUCTS WHERE CATEGORY='Warning'";
        try {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            int productCount = 0;
            while (rs.next()) {
                if (productCount >= numProducts)
                    break;
                ProductId = (rs.getInt(1));
                name = (rs.getString(2));
                description = (rs.getString(3));
                price = (rs.getFloat(4));
                imageLocation = (rs.getString(5));
                category = (rs.getString(6));
                Product product = new Product();
                product.setId(ProductId);
                product.setName(name);
                product.setDescription(description);
                product.setPrice(price);
                product.setImageLocation(imageLocation);
                product.setCategory(category);
                productData.add(product);
                productCount++;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

      
        return productData;
          }
    public ArrayList<Product> getAllProduct() {

        DBManager dm = new DBManager();
        Connection con = dm.getConnection();
        int id = 0;
        String name = null;
        String description = null;
        float price = 0.0f;
        String imageLocation = null;
        String category = null;
        ArrayList<Product> productData = new ArrayList();

        String query = "SELECT * FROM PRODUCT";
        try {
            PreparedStatement stmt = con.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                id = (rs.getInt(1));
                name = (rs.getString(2));
                description = (rs.getString(3));
                price = (rs.getFloat(4));
                imageLocation = (rs.getString(5));
                category = (rs.getString(6));
               
                Product tempProduct = new Product();
                tempProduct.setId(id);
                tempProduct.setName(name);
            
                tempProduct.setDescription(description);
                tempProduct.setPrice(price);
                tempProduct.setImageLocation(imageLocation);
                tempProduct.setCategory(category);
                productData.add(tempProduct);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

      
        return productData;

    }
    public void insertProduct(Product newProduct){
        
        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        Statement stmt = null;
        
        try {
        
            stmt = con.createStatement();
            String sql = String.format("INSERT INTO PRODUCTDATA(NAME,DESCRIPTION,PRICE,IMAGE_LOCATION,CATEGORY) " + 
                            "VALUES('%s','%s','%s','%s','%s')",newProduct.getName(),newProduct.getDescription(),newProduct.getPrice(),newProduct.getImageLocation(),newProduct.getCategory());
            stmt.executeUpdate(sql);
        }
        catch (SQLException e){
            e.printStackTrace();
         }finally {
            try {
                stmt.close();
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        
    }
     public void updateProduct(Product newProduct){
        
        DBManager dmbgr = new DBManager();
        Connection con = dmbgr.getConnection();
        Statement stmt = null;
        
        try {
        
            stmt = con.createStatement();
            String sql = String.format("UPDATE Product SET name='%s',description='%s',price='%s',imageLocation='%s',category='%s' where product_id=%d ",newProduct.getName(),newProduct.getDescription(),newProduct.getPrice(),newProduct.getImageLocation(),newProduct.getCategory(),newProduct.getId());
            stmt.executeUpdate(sql);
        }
        catch (SQLException e){
            e.printStackTrace();
         }finally {
            try {
                stmt.close();
                con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        
    }
}
