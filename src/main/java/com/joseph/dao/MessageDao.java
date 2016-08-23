package com.joseph.dao;

import java.util.List;

import com.joseph.model.Message;

public interface MessageDao {
	public void add(Message message);
	public Message getMessage(int messageId);
	public List getAllMessage();
}
