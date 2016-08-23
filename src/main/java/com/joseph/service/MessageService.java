package com.joseph.service;

import java.util.List;
import com.joseph.model.Message;

public interface MessageService {
	public void add(Message message);
	public Message getMessage(int messageId);
	public List getAllMessage();
}
