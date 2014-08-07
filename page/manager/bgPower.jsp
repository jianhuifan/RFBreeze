<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	if(session.getAttribute("user")==null)
	{
		out.println("<script>alert('请登录!');location.href='"+this.getServletContext().getContextPath()+"/page/adminUserPage/login.jsp'</script>");
	}
%>