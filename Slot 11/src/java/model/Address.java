/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;
import java.util.Collection;

public class Address {
    private String line1;
    private String town;
    private String county;
    private String postcode;
    private Collection phoneNumbers;

    public Address() {
        this.line1 = "line1";
        this.town = "a town2";
        this.county = "a county";
        this.postcode = "postcode";
    }

    public void setLine1(String line1) {
        this.line1 = line1;
    }

    public String getLine1() {
        return line1;
    }

    public void setTown(String town) {
        this.town = town;
    }

    public String getTown() {
        return town;
    }

    public void setCounty(String county) {
        this.county = county;
    }

    public String getCounty() {
        return county;
    }

    public void setPostcode(String postcode) {
        this.postcode = postcode;
    }

    public String getPostcode() {
        return postcode;
    }

    public Collection getPhoneNumbers() {
        return phoneNumbers;
    }

    public void setPhoneNumbers(Collection phoneNumbers) {
        this.phoneNumbers = phoneNumbers;
    }
}
