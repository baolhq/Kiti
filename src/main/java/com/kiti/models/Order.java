package com.kiti.models;

import java.util.ArrayList;

public class Order {
    private int id;
    private double totalPrice;
    private ArrayList<Product> products;
    private User user;

    public Order(double totalPrice, ArrayList<Product> products, User user) {
        this.totalPrice = totalPrice;
        this.products = products;
        this.user = user;
    }

    public int getId() {
        return id;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public ArrayList<Product> getProducts() {
        return products;
    }

    public void setProducts(ArrayList<Product> products) {
        this.products = products;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
