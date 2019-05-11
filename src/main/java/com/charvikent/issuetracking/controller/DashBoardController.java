package com.charvikent.issuetracking.controller;

import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.charvikent.issuetracking.config.FilesStuff;
import com.charvikent.issuetracking.model.User;
import com.charvikent.issuetracking.service.UserService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;


@Controller
public class DashBoardController {
	
	@Autowired
	HttpSession session;
	
		@Autowired
	FilesStuff fileTemplate;
		@Autowired
		private UserService userService;
	
	
	
   
	@RequestMapping("/dashBoard")
	public String showDashBoard(Model model,HttpServletRequest request,HttpSession session) throws JsonProcessingException
	{
		
		 
		 User objuserBean = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			
	User userDesignation= userService.getUserDesignationById(objuserBean.getId());
		
		 session.setAttribute("userDesignationSession", userDesignation);
				
		
				 return "dashBoard";
		
	}
	
	
}