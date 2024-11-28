package model;

import java.time.LocalDate;

public class Customer {
    private String name;
    private LocalDate dob;
    private String address;
    private String picture;

    public Customer(String name, String dob, String address, String picture) {
        this.name = name;
        this.dob = LocalDate.parse(dob);
        this.address = address;
        this.picture = picture;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public LocalDate getDob() {
        return dob;
    }

    public void setDob(LocalDate dob) {
        this.dob = dob;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }
}
