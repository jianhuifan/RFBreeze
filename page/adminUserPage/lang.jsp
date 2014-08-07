<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setAttribute("loginTitle","樱之炫积分系统后台登陆");
	request.setAttribute("loginDesc","后台登录页面");
	request.setAttribute("cop","樱之炫");
	request.setAttribute("loginDesc2","积分系统登陆");
	request.setAttribute("loginSuccJumb","../manager/channelMgr.jsp?norole=true");
%>