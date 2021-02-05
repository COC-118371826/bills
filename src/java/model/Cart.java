/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import java.util.ArrayList;

/**
 *
 * @author cilli
 */
public class Cart implements Serializable{




    private ArrayList<LineItem> items;

    public Cart() {
        items = new ArrayList<LineItem>();
    }

    public ArrayList<LineItem> getItems() {
        return items;
    }

    public int getCount() {
        return items.size();
    }

    public void addItem(LineItem item) {
        int id = (int) item.getProduct().getId();
        int quantity = item.getQuantity();
        for (LineItem cartItem : items) {
            if (cartItem.getProduct().getId() == id) {
                cartItem.setQuantity(quantity);
                return;
            }
        }
        items.add(item);
    }
    
    public void removeItem(LineItem item) {
        int id = (int) item.getProduct().getId();
        for (int i = 0; i < items.size(); i++) {
            LineItem lineItem = items.get(i);
            if (lineItem.getProduct().getId() == id) {
                items.remove(i);
                return;
            }
        }
    }
}

