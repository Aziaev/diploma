package com.joseph.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.joseph.model.Message;
import com.joseph.service.MessageService;

@Controller
public class MessageController {
	
	@Autowired
	private MessageService messageService;
	
	@RequestMapping("/message")
	public String setupForm(Map<String, Object> map){
		Message message = new Message();
		map.put("message", message);
		map.put("messageList", messageService.getAllMessage());
		return "message";
	}
	
	@RequestMapping(value="/message.do", method=RequestMethod.POST)
	public String doActions(@ModelAttribute Message message, BindingResult result, @RequestParam String action, Map<String, Object> map){
		Message messageResult = new Message();
		switch(action.toLowerCase()){	//only in Java7 you can put String in switch
		case "send":
			messageService.add(message);
			messageResult = message;
			break;
		case "search":
			Message searchedMessage = messageService.getMessage(message.getMessageId());
			messageResult = searchedMessage!=null ? searchedMessage : new Message();
			break;
		}
		map.put("message", messageResult);
		map.put("messageList", messageService.getAllMessage());
		return "redirect:/message";
	}
}
