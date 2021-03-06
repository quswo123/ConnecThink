package com.connecthink.handler;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;

public class LoginFailHandler implements AuthenticationFailureHandler{

	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
			AuthenticationException exception) throws IOException, ServletException {
		exception.printStackTrace();
		System.out.println("-------------------login fail-----------------");
		System.out.println(request.getParameter("username"));
		System.out.println(request.getParameter("password"));
		System.out.println("----------------------------------------------");
		
		response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
	}

}
