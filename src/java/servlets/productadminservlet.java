/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.Double.parseDouble;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Product;

import service.ProductService;


/**
 *
 * @author cilli
 */
public class productadminservlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
     
       String action = request.getParameter("action");
        ProductService pServ = new ProductService();
       
        String url = null;
        if (action == null)
            request.getRequestDispatcher("/Home").forward(request, response);
        if (action.equals("listProducts")){
            ArrayList<Product> products = pServ.getAllProducts();
            request.setAttribute("products", products);
            request.getRequestDispatcher("/productadmin.jsp").forward(request, response);
        }
        if (action.equals("add")){
            request.getRequestDispatcher("/addproduct.jsp").forward(request, response);
        }
     
         if (action.equals("delete")){
            deleteProduct(request,response);
            ArrayList<Product> products = pServ.getAllProducts();
            request.setAttribute("products", products);
            request.getRequestDispatcher("/productadmin.jsp").forward(request, response);
        }
         if (action.equals("updateCompleteProduct")){
            updateProduct(request,response);
            ArrayList<Product> products = pServ.getAllProducts();
            request.setAttribute("products", products);
            request.getRequestDispatcher("/productadmin.jsp").forward(request, response);
        }
            if (action.equals("edit")){
            String productId = request.getParameter("id");
            if (productId == null)
                request.getRequestDispatcher("/Home").forward(request, response);
            else {
          long pId = Long.parseLong(productId);
          pServ = new ProductService();
          Product oldProduct = pServ.getProduct(pId);
          request.setAttribute("oldProduct", oldProduct);
          request.getRequestDispatcher("/editProduct.jsp").forward(request, response);
        }
         }if (action.equals("view")){
            String productId = request.getParameter("id");
            if (productId == null)
                request.getRequestDispatcher("/Home").forward(request, response);
            else {
          long pId = Long.parseLong(productId);
          pServ = new ProductService();
          Product oldProduct = pServ.getProduct(pId);
          request.setAttribute("oldProduct", oldProduct);
          request.getRequestDispatcher("/viewProduct.jsp").forward(request, response);
        }
         }if (action.equals("cart")){
            String productId = request.getParameter("id");
            if (productId == null)
                request.getRequestDispatcher("/Home").forward(request, response);
            else {
          long pId = Long.parseLong(productId);
          pServ = new ProductService();
          Product oldProduct = pServ.getProduct(pId);
          request.setAttribute("oldProduct", oldProduct);
          request.getRequestDispatcher("/cart.jsp").forward(request, response);
        }
         }
             if (action.equals("insertProduct")){
            insertProduct(request,response);
            ArrayList<Product> products = pServ.getAllProducts();
            request.setAttribute("products", products);
            request.getRequestDispatcher("/productadmin.jsp").forward(request, response);
        }
          
         
        else
            request.getRequestDispatcher("/Home").forward(request, response);
       
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
     private void deleteProduct(HttpServletRequest request, HttpServletResponse response){
    long productId = Long.parseLong(request.getParameter("id"));
    ProductService pServ = new ProductService();
    pServ.deleteProduct(productId);
    return;
    }

   private void insertProduct(HttpServletRequest request, HttpServletResponse response){
        
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        float price = Float.parseFloat(request.getParameter("price"));
        String imageLocation = request.getParameter("imageLocation");
        String category = request.getParameter("category");
     
        
        
        Product newProduct = new Product();
        newProduct.setName(name);
        newProduct.setDescription(description);
        newProduct.setPrice(price);
        newProduct.setImageLocation(imageLocation);
        newProduct.setCategory(category);
        
        ProductService pServ = new ProductService();
        pServ.insertProduct(newProduct);
        
        
        
    }
   private void updateProduct(HttpServletRequest request, HttpServletResponse response){
        long id = Long.parseLong(request.getParameter("id"));
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        float price = Float.parseFloat(request.getParameter("price"));
        String imageLocation = request.getParameter("image_Location");
        String category = request.getParameter("category");
        
        Product newProduct = new Product();
        newProduct.setId(id);
        newProduct.setName(name);
        newProduct.setDescription(description);
        newProduct.setPrice(price);
        newProduct.setImageLocation(imageLocation);
        newProduct.setCategory(category);
        
        ProductService pServ = new ProductService();
        pServ.updateProduct(newProduct);
        
        
        
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
