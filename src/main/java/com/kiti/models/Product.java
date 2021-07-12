package com.kiti.models;

public class Product {
    private String name;
    private String description;
    private String photoURL;
    private int rating, id;
    private double price;
    private float salePercent;

    public Product(String name, String description, String photoURL, int rating, double price, float salePercent) {
        this.name = name;
        this.description = description;
        this.photoURL = photoURL;
        this.rating = rating;
        this.price = price;
        this.salePercent = salePercent;
    }

    public int getId() {
        return id;
    }

    public String getPhotoURL() {
        return photoURL;
    }

    public void setPhotoURL(String photoURL) {
        this.photoURL = photoURL;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public float getSalePercent() {
        return salePercent;
    }

    public void setSalePercent(float salePercent) {
        this.salePercent = salePercent;
    }
}
