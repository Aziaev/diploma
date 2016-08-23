package com.joseph.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.joseph.dao.MessageDao;
import com.joseph.model.Message;
import com.joseph.service.MessageService;

@Service
public class MessageServiceImpl implements MessageService {
	@Autowired
	private MessageDao messageDao;
	
	@Transactional
	public void add(Message message) {
		messageDao.add(message);
	}

	@Transactional
	public Message getMessage(int messageId) {
		return messageDao.getMessage(messageId);
	}

	@Transactional
	public List getAllMessage() {
		return messageDao.getAllMessage();
	}

}
