package com.joseph.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Message {
	@Id
	@Column
	@GeneratedValue(strategy=GenerationType.IDENTITY) //for auto number
	private int messageId;
	@Column
	private int senderId;
	@Column
	private int recieverId;
	@Column
	private String messageText;

	public Message(){}
	public Message(int messageId, int senderId, int recieverId,
			String messageText) {
		super();
		this.messageId = messageId;
		this.senderId = senderId;
		this.recieverId = recieverId;
		this.messageText = messageText;
	}
	public int getMessageId() {
		return messageId;
	}
	public void setMessageId(int messageId) {
		this.messageId = messageId;
	}
	public int getSenderId() {
		return senderId;
	}
	public void setSenderId(int senderId) {
		this.senderId = senderId;
	}
	public int getRecieverId() {
		return recieverId;
	}
	public void setRecieverId(int recieverId) {
		this.recieverId = recieverId;
	}
	public String getMessageText() {
		return messageText;
	}
	public void setMessageText(String messageText) {
		this.messageText = messageText;
	}
}
