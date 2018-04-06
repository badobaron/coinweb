
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<title>COIN.COM</title>
 	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- COIN.CSS -->	
	<link rel="stylesheet" type="text/css" href="http://localhost:8080/coinweb/css/coin.css">
	<!-- favicon coin - ref : https://www.cmsfactory.net/node/10463 -->
	<link rel="shortcut icon" href="http://localhost:8080/coinweb/images/favicon.ico">
	 
</head>
<body>

	<jsp:include page="../header.jsp"></jsp:include> 
		<div class="div_header">
			 <h2>Freeboard</h2>
		</div>
		<div class="container">	  
		  <table class="table table-bordered table-striped">	
		      <tr>
		     		<th>NO</th>
					<th>����</th>
					<th>�ۼ���</th>
					<th>�ۼ���</th>
					<th>��ȸ��</th>
					<th>���ƿ�</th>
		      </tr>
		      <tr> <!--10�� for �� // �ۼ��� ������ -->
					<td>1</td>
					<a href="#"><td>����</td></a>
					<td>�ۼ���</td>
					<td>�ۼ���</td>
					<td>��ȸ��</td>
					<td>���ƿ�</td>
			  </tr>
		      <tr>
					<td>2</td>
					<a href="#"><td>����</td></a>
					<td>�ۼ���</td>
					<td>�ۼ���</td>
					<td>��ȸ��</td>
					<td>���ƿ�</td>
			 </tr>	
			</table>
			<!-- �˻� �� ���� ��� �����communityBoardProcess.jsp -->							
			<form action="#"  method="get">
				 <div class="form-group">
					<select class="form-control input-sm" name="tableContents">
						<option value=title>����</option>
						<option value=contents>����</select>
					<input type="text" class="form-control form-group-search">
					<button type="submit" class="btn btn-success ">�˻�</button>
					<a href="http://localhost:8080/coinweb/community/freeboard_write.jsp"><button type="button" class="btn btn-warning form-group-write">�۾���</button></a>
				</div>
			</form>
			<div class="text-center">
			<ul class="pagination">
				<li><a href="#"> < </a></li>
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li><a href="#"> > </a></li>
			</ul>
			</div>	  
		</div>
<!-- 	safasdffd -->
		
	<jsp:include page="../footer.jsp"></jsp:include>  
</body>

</html>