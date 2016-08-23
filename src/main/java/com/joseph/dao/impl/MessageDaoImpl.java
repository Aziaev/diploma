package com.joseph.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.joseph.dao.MessageDao;
import com.joseph.model.Message;

@Repository
public class MessageDaoImpl implements MessageDao {
	@Autowired
	private SessionFactory session;
	
	@Override
	public void add(Message message) {
		session.getCurrentSession().save(message);
	}

	@Override
	public Message getMessage(int messageId) {
		return (Message)session.getCurrentSession().get(Message.class, messageId);
	}

	@Override
	public List getAllMessage() {
		return session.getCurrentSession().createQuery("from Message").list();
	}

}
