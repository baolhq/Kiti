package com.kiti.models;

public class Product {
    private String name;
    private int ratings;
    private float originalPrice, newPrice;
    private boolean isSale;

    public Product(String name, int ratings, float originalPrice, float newPrice, boolean isSale) {
        this.name = name;
        this.ratings = ratings;
        this.originalPrice = originalPrice;
        this.newPrice = newPrice;
        this.isSale = isSale;
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
}
