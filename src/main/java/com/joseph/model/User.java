package com.joseph.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class User {
    @Id
    @Column
    @GeneratedValue(strategy=GenerationType.IDENTITY) //for auto number
    private int userId;
    @Column
    private String email;
    @Column
    private String name;
    @Column
    private String password;

    public User(){}
    public User(int userId, String email, String name,
	    String password) {
	super();
	this.userId = userId;
	this.email = email;
	this.name = name;
	this.password = password;
    }
    public int getUserId() {
	return userId;
    }
    public void setUserId(int userId) {
	this.userId = userId;
    }
    public String getEmail() {
	return email;
    }
    public void setEmail(String email) {
	this.email = email;
    }
    public String getName() {
	return name;
    }
    public void setName(String name) {
	this.name = name;
    }
    public String getPassword() {
	return password;
    }
    public void setPassword(String password) {
	this.password = password;
    }


}
