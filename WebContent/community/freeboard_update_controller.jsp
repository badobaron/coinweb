<%@page import="java.io.Console"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="coinweb.vo.BoardVO, coinweb.dao.BoardDAO"%>

<%
	request.setCharacterEncoding("EUC-KR");
	String no =request.getParameter("no");
	BoardDAO dao =new BoardDAO();
	// ���⼭���� �ٽ� .������Ʈ ���� �ȵ�
	int result=dao.updateBoardContent(no);
	System.out.println(no);
	System.out.println(result);
	
	dao.close();	
	if(result==1){
		response.sendRedirect("http://localhost:8080/coinweb/community/freeboard.jsp");		
	}


%> 
    
    
 