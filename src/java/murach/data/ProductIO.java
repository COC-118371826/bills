package murach.data;

import java.io.*;
import java.util.*;


import model.Product;
public class ProductIO {

    public static Product getProduct(int id, String filepath) {
        try {
            File file = new File(filepath);
            BufferedReader in = new BufferedReader(
                                new FileReader(file));

            String line = in.readLine();
            while (line != null) {
                StringTokenizer t = new StringTokenizer(line, "|");
                String Productid = t.nextToken();
                if (id == Integer.valueOf(Productid)) {
                    String ProductDescription = t.nextToken();
                    double Price = Double.parseDouble(t.nextToken());
                    Product p = new Product();
                    p.setId(id);
                    p.setDescription(ProductDescription);
                    p.setPrice(Price);
                    in.close();
                    return p;
                }
                line = in.readLine();
            }
            in.close();
            return null;
        } catch (IOException e) {
            System.err.println(e);
            return null;
        }
    }

    public static ArrayList<Product> getProducts(String filepath) {
        ArrayList<Product> products = new ArrayList<Product>();
        File file = new File(filepath);
        try {
            BufferedReader in = new BufferedReader(
                                new FileReader(file));

            String line = in.readLine();
            while (line != null) {
                StringTokenizer t = new StringTokenizer(line, "|");
                String id = t.nextToken();
                String ProductDescription = t.nextToken();
                String priceAsString = t.nextToken();
                double price = Double.parseDouble(priceAsString);
                Product p = new Product();
                p.setId(Integer.valueOf(id));
                    p.setDescription(ProductDescription);
                    p.setPrice(price);
                products.add(p);
                line = in.readLine();
            }
            in.close();
            return products;
        } catch (IOException e) {
            System.err.println(e);
            return null;
        }
    }
}