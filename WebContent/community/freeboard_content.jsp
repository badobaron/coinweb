<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="coinweb.vo.BoardVO, coinweb.dao.BoardDAO, java.util.ArrayList"%>
    
<!-- jstl tag -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

    
<%
	request.setCharacterEncoding("EUC-KR");
	String no =request.getParameter("no");
	BoardDAO dao =new BoardDAO();
	BoardVO vo=dao.getBoardContent(no);
	dao.close();
	
%>





    
    
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="http://localhost:8080/coinweb/CSS/coin.css">
<script type="text/javascript" src="http://localhost:8080/coinweb/js/jquery-3.3.1.min.js"></script>

<!-- favicon coin - ref : https://www.cmsfactory.net/node/10463 -->
<link rel="shortcut icon" href="http://localhost:8080/coinweb/images/favicon.ico">

<!-- bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<title>COIN.COM</title>




</head>
<body>
<jsp:include page="../header.jsp"></jsp:include> 
		
			<div class="commtitle">
				 <h2>Free Board</h2>
			</div>
		
		<div class="container container_comm">	 
		
			<table class="table table-bordered table-striped">
					<tr>
						<th>��ȣ</th>
						
						<td><%=vo.getNo()%></td>
						<th>����</th>
						<td><%=vo.getTitle()%></td>
						<th>��ϳ�¥</th>
						<td><%=vo.getBdate()%></td>
						<th>��ȸ��</th>
						<td><%=vo.getHits()%></td>
						<th>���ƿ�</th>
						<td><%=vo.getLikeit()%></td>		
								
					</tr>
					<tr>
						<th colspan="10">����
						<p><%=vo.getContent() %><p></th>
					</table>

							<a href="http://localhost:8080/coinweb/community/freeboard.jsp?rpage=${rpage}"><button type="button" class="btn btn-comm-con btn-comm-con-1st">���� ������</button></a>
							<a href="http://localhost:8080/coinweb/community/freeboard_update.jsp?no=<%=vo.getNo() %>&rno=${rno}"><button type="button" class="btn btn-comm-con">�����ϱ�</button></a>
							<a href="http://localhost:8080/coinweb/community/freeboard_delete.jsp?no=<%=vo.getNo() %>&rno=${rno}"><button type="button" class="btn btn-comm-con">�ٷλ���</button></a>					
							<a href="http://localhost:8080/coinweb/index.jsp"><button type="button" class="btn btn-comm-con">Ȩ����</button></a>
											
		</div>
	
	<jsp:include page="../footer.jsp"></jsp:include>  
</body>


</html>