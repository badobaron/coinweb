<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="http://localhost:8080/coinweb/CSS/coin.css">

<body>
<header>

<!-- Navigation -->
<div class="topnav shadow" id="navbar">
	<div class="nav">
  <a class="activea" href="http://localhost:8080/coinweb/index.jsp"><span>Coinweb<span></a>
  <div class="topnav-right">
    <a href="#contact">�ŷ��ϱ�</a>
 <div class="dropdown">
 	<button  class="dropbtn" href="#contact">�г���<i class="fa fa-caret-down"></i></button>
 	 <div class="dropdown-content">
      <a href="http://localhost:8080/coinweb/wallet/wallet.jsp">�� ����</a>
      <a href="http://localhost:8080/coinweb/index.jsp">�α׾ƿ�</a>
    </div>
    </div>
      <div class="dropdown">
 	<button  class="dropbtn" href="#contact">Ŀ�´�Ƽ<i class="fa fa-caret-down"></i></button>
 	 <div class="dropdown-content">
      <a href="http://localhost:8080/coinweb/Rangking/Rangk.jsp">��ŷ</a>
      <a href="#">�����Խ���</a>
  	<a href="#">���μҽ�</a>
    </div>
    </div>
 	<div class="dropdown">
 	<button  class="dropbtn" href="#contact">������<i class="fa fa-caret-down"></i></button>
 	 <div class="dropdown-content">
      <a href="#">�̿밡�̵�</a>
      <a href="#">FAQ</a>
      <a href="#">�����ϱ�</a>
    </div>
    </div>
    </div>
  </div>
</div>
<!-- Navigation �� -->

</header>

<script>
//�׺���̼� sticky ���.. ������ 
window.onscroll = function() {myFunction()};

var navbar = document.getElementById("navbar");
var sticky = navbar.offsetTop;

function myFunction() {
  if (window.pageYOffset > sticky) {
    navbar.classList.add("sticky")
  } else {
    navbar.classList.remove("sticky");
  }
}
</script>
</body>
</html>
