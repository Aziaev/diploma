package com.joseph.dao;

import java.util.List;

import com.joseph.model.User;

public interface UserDao {
	public void add(User user);
	public void edit(User User);
	public void delete(int userId);
	public User getUser(int userId);
	public List getAllUser();
}
