package com.ajax;

import java.util.HashMap;

/**
 *
 * @author nbuser
 */
public class ComposerData {
    
    private HashMap composers = new HashMap();
    

    public HashMap getComposers() {
        return composers;
    }
    
    public ComposerData() {
        
        composers.put("1", new Composer("1", "Hospital", "6.00", "Informative"));
        composers.put("2", new Composer("2", "Airport", "4.00", "Informative"));
        composers.put("3", new Composer("3", "One Way", "3.00", "Informative"));
        composers.put("4", new Composer("4", "No Entry Ahead", "6.00", "Regulatory"));
        composers.put("5", new Composer("5", "No Right Turn", "8.00", "Regulatory"));
        composers.put("6", new Composer("6", "No Left Turn", "7.00", "Regulatory"));
        composers.put("7", new Composer("7", "Road Bend", "7.00", "Warning"));
        
        composers.put("8", new Composer("8", "T Junction", "10.00", "Warning"));
        composers.put("9", new Composer("9", "Slippery Road", "5.00", "Warning"));
       
    }

}
