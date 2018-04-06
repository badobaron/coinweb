<%@page import="java.io.Console"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="coinweb.vo.BoardVO, coinweb.dao.BoardDAO"%>

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
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="http://localhost:8080/coinweb/CSS/coin.css">
<script type="text/javascript" src="http://localhost:8080/coinweb/js/jquery-3.3.1.min.js"></script>

<!-- favicon coin - ref : https://www.cmsfactory.net/node/10463 -->
<link rel="shortcut icon" href="http://localhost:8080/coinweb/images/favicon.ico">

<!-- naver smarteditor2 -->

<script type="text/javascript" src="http://localhost:8080/coinweb/se/js/service/HuskyEZCreator.js" charset="euc-kr"></script>
<title>Insert title here</title>
<script type="text/javascript">
$(document).ready(function(){
	
	$("#btnUpdate").click(function(){
		
		if($("#title").val() == ""){
			alert("������ �Է��ϼ���");
			$("#title").focus();
			return false;
		}else if($("#content").val() == ""){
			alert("������ �Է��ϼ���");
			$("#content").focus();
			return false;
		}	
	
			//��������
			boardForm.submit();	
	});
		
}); //f


</script>


</head>
<body>
<jsp:include page="../header.jsp"></jsp:include> 
		
	<div class="commtitle">
		 <h2>Free Board Write</h2>
	</div>	
	<div class="container" style="display: inline-block; border: 1px solid grey; margin-left : 300px;">	 
		
		<form name="boardForm" action ="http://localhost:8080/coinweb/community/freeboard_update_controller.jsp" method="post" class="board_update" enctype="multipart/form-data">
			<ul>
				<li>
					<label>��ȣ</label>
						<input type="text" name="rno" value="<%=vo.getRno()%>" disabled="disabled">
						<input type="hidden" name="no" value="<%=no%>">
	<!-- 							�̹��� ���� ��, ���� �ִ� �̹��� �����ϱ����� rfname�� �����Ѵ�. -->
<%-- 						<input type="hidden" name="drfname" value="<%=vo.getRfname()%>"> --%>
				</li>
				<li>
					<label>����</label>
					<input type="text" id="title" name="title" value="<%=vo.getTitle()%>" style="width: 400px;">
				</li>
				<li>
					<label>��ϳ�¥</label>
					<input type="text" name="bdate" value="<%=vo.getBdate()%>" disabled="disabled">
				</li>
				<li>
					<label>��ȸ�� </label>
					<input type="text" name="hits" value="<%=vo.getHits()%>" disabled="disabled">
				</li>
				<li>
<!-- 					<label style="display: inline-block; border: 1px solid green;">����</label> -->
					<textarea id="content" rows="12" cols="55" name="content" style="margin-left: 100px;  margin-top: 50px; width: 1000px;"><%=vo.getContent()%></textarea>
				</li> 			
				<li>
					<a href="http://localhost:8080/coinweb/community/freeboard_board.jsp"><button type="button" class="btn" >���� ������</button></a>
					<button type="submit" id="btnUpdate" class="btn">�����ϱ�</button>
					<a href="http://localhost:8080/coinweb/community/freeboard_delete.jsp?no=<%=no%>&rno=${rno}"><button type="button" class="btn">�����ϱ�</button></a>
					<a href="http://localhost:8080/coinweb/index.jsp"><button type="button" class="btn">Ȩ����</button></a>
				</li>
			</ul>
		</form>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>  
</body>


<!-- naver smarteditor2 ���� elPlaceHolder id�� ���߱� -->
<script type="text/javascript">
var oEditors = [];
nhn.husky.EZCreator.createInIFrame({

    oAppRef: oEditors,

    elPlaceHolder: "contentddddd",

    sSkinURI: "http://localhost:8080/coinweb/se/SmartEditor2Skin.html",

    fCreator: "createSEditor2"

});
</script>


</html>