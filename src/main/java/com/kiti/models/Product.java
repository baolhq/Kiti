package com.kiti.models;

public class Product {
    private String name;
    private String description;
    private int ratings, id;
    private float originalPrice, newPrice;
    private boolean isSale;

    public Product(String name, String description, int ratings, float originalPrice, float newPrice, boolean isSale) {
        this.name = name;
        this.description = description;
        this.ratings = ratings;
        this.originalPrice = originalPrice;
        this.newPrice = newPrice;
        this.isSale = isSale;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getRatings() {
        return ratings;
    }

    public void setRatings(int ratings) {
        this.ratings = ratings;
    }

    public float getOriginalPrice() {
        return originalPrice;
    }

    public void setOriginalPrice(float originalPrice) {
        this.originalPrice = originalPrice;
    }

    public float getNewPrice() {
        return newPrice;
    }

    public void setNewPrice(float newPrice) {
        this.newPrice = newPrice;
    }

    public boolean isSale() {
        return isSale;
    }

    public void setSale(boolean sale) {
        isSale = sale;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
