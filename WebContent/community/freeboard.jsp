<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="http://localhost:9010/WebprojectCoin/css/coin.css">
<script type="text/javascript" src="http://localhost:9010/WebprojectCoin/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="../se/js/service/HuskyEZCreator.js" charset="euc-kr"></script>
<!-- favicon coin - ref : https://www.cmsfactory.net/node/10463 -->
<link rel="shortcut icon" href="http://localhost:9010/WebprojectCoin/images/favicon.ico">
<script type="text/javascript" src="http://localhost:9010/WebprojectCoin/js/se2_board.js" async="async" ></script><!-- http://dailydev.tistory.com/15 -->

<title>Insert title here</title>

</head>
<body>
<jsp:include page="../header.jsp"></jsp:include> 
		<div>
			 <h2>Free Board Write</h2>
		</div>
		<div class="container">	  
			<form action="#"  method="post">
		  		<table class="table table-bordered table-striped">			  
		    		 <tr>
		     			<td><input type="text" placeholder="������ �Է��ϼ���" style="width: 100%" ></td>
					 </tr>
		    
		      <tr>
					<td><textarea name="ir1" id="ir1" rows="10" cols="100">�����Ϳ� �⺻���� ������ ��(���� ���)�� ���ٸ� �� value ���� �������� �����ø� �˴ϴ�.</textarea></td>
			 </tr>	
			</table>
				<div class="communityBoard_btn">
					<a href=""><button type="submit" class="btn btn-warning">���</button></a>
					<button type="reset" class="btn">���</button>
				</div>
			</form>			
		</div>
	
	<jsp:include page="../footer.jsp"></jsp:include>  
</body>


</html>