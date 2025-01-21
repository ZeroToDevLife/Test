CREATE DATABASE restaurant;

USE restaurant;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,      
    username VARCHAR(50) UNIQUE NOT NULL,   
    nickname VARCHAR(50) UNIQUE NOT NULL,   
    email VARCHAR(100) UNIQUE NOT NULL,    
    password VARCHAR(255) NOT NULL,         
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE restaurants (
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) UNIQUE NOT NULL,
    category VARCHAR(255) UNIQUE NOT NULL,
    address VARCHAR(255) UNIQUE NOT NULL,
    latitude FLOAT,
    longitude FLOAT,
    rating FLOAT
);

CREATE TABLE reviews (
	id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    restaurant_id INT NOT NULL,
    rating INT NOT NULL,
    coment TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(id)
);

CREATE TABLE favorites (
	id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    restaurant_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(id)
);