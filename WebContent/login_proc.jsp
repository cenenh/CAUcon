<%@page import="com.pl.user.vo.userVO"%>
<%@page import="com.pl.user.dao.userDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String idSave = request.getParameter("idSave");
	
	userVO vo = new userVO();
	vo.setUserId(id);
	vo.setPassword(password);
	
	userDAO userDAO = new userDAO();
	userVO user = userDAO.getUser(vo);
	
	if(user == null)
	{
		response.sendRedirect("login.jsp");
	}
	else{
		//제대로 로그인 되었을때
		if( "Y".equals( idSave )){
			Cookie cookie = new Cookie("id",id);
			cookie.setPath("/"); //root
			cookie.setMaxAge(60*60); //초단위 60x60 = 1시간
			//쿠키삭제시 -> 시간을 0 
			//브라우저 종료시까지만 쿠키 유지 : -1 (음수) 
			// 한글 : 1) 암호화
			// 한글 : 2) URLEncoder.encode("한글","euc-kr")
			response.addCookie(cookie);
		}
		session.setAttribute("USER", user);
		System.out.println("login success");
		response.sendRedirect("viewClassList.jsp");
	}
%>