<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="coinweb.vo.*"%>
<%String sid=(String)session.getAttribute("sid"); %>
<% request.setCharacterEncoding("EUC-KR"); %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <link rel="stylesheet" href="http://localhost:8080/coinweb/CSS/coin.css">

	
<script src="http://localhost:8080/coinweb/js/jquery-3.3.1.min.js"></script>
<script>
$(document).ready(function(){
	
	$("#btnLogin").click(function(){
		if($("#signin-email").val()==""){
			alert("���̵� �Է��ϼ���.")
			$("#signin-email").focus();
			return false;
		}else if($("#signin-password").val()==""){
			alert("�н����带 �Է��ϼ���.")
			$("#signin-password").focus();
			return false;
		}
		
		loginForm.submit();
		
	
	});
});
</script>

<script>
$(document).ready(function(){

	$("#btnJoin").click(function(){
		if($("#signup-email").val()==""){
			alert("�̸����� �Է��ϼ���.");
			$("#signup-email").focus();
			return false;
		}else if($("#signup-username").val()==""){
				alert("�г����� �Է��ϼ���");
				$("#signup-username").focus();
				return false;
			}else if($("#pass").val()==""){
			alert("��й�ȣ�� �Է��ϼ���.");
			$("#pass").focus();
			return false;
			}else if($("#cpass").val()==""){
				alert("��й�ȣ�� ���Է� �ϼ���.");
				$("#cpass").focus();
				return false;
		}else if($("#agree").is(":checked") == false){
			alert("�̿��� �� �������� ���Ǹ� üũ�ϼ���.");
			$("#agree").focus();
			return false;
		}
		
		//��������
		joinForm.submit();
		
		//��й�ȣ&��й�ȣ Ȯ�� üũ
	});
	$("#cpass").focusout(function(){
		// 1.�н����� �Է����� ����ִ��� Ȯ��  ������� ���� ���¿����� ��
		// 2. 1���� ����� ��й�ȣ Ȯ������ ������� ���� ���¿����� �񱳸� ���� 
		if($("#pass").val()=="" ){
			alert("�н����带 �Է��ϼ���")
			$("$pass").focus;
			return false;
			
		}else{
			if($("#cpass").val()!=""){
			
			
				//��й�ȣ & ��й�ȣ Ȯ�� üũ
				if($("#pass").val()== $("#cpass").val()){
				$("#msg").css("font-size","12pt").css("color","blue").css("display","block");
				$("#msg").text("��й�ȣ�� �����մϴ�").css("padding","3px 0px 0px 0px");
				return false;
			}else{
				$("#msg").css("font-size","12pt").css("color","red").css("display","block").css("padding","3px 0px 0px 0px");
				$("#msg").text("��й�ȣ�� �ٸ��ϴ�. �ٽ� �Է����ּ���");
				$("#pass").val("").focus();
				$("#cpass").val("");
					return false;
		    }
				
		 }
			
	  }
		
			
	
});
	
	$("#signup-email").focusout(function(){
		//alert("���̵� �ߺ�");
		var id = $("#signup-email").val();
		//alert(id);
		
		$.ajax({
			url : 'http://localhost:8080/coinweb/join/id_check.jsp',
			type :'POST',
			data : 'id='+id,
			dataType : "json",
			success : function(data){
				if(data.length != 0){	
					//alert("����"+data);
	
					 if(data == 1){
						$("#id_msg").css("display","block").css("font-size","12pt")
						.css("color","red").css("padding","3px 0px 0px 0px");
						$("#id_msg").text("�ߺ��� �̸����Դϴ�.");
						$("#signup-email").val("").focus();
		
						return false;
						
					}else{
					
						if($("#signup-email").val()==""){
							$("#id_msg").css("display","block").css("font-size","12pt")
							.css("color","red").css("padding","3px 0px 0px 0px");
							$("#id_msg").text("�̸����� �Է��ϼ���.");
							$("#signup-email").val("").focus();
						}else{
							$("#id_msg").css("display","block").css("font-size","12pt")
							.css("color","blue").css("padding","3px 0px 0px 0px");
							$("#id_msg").text("��밡���� �̸��� �Դϴ�.");
							$("#signup-username").focus();
						}
						return false;
					}
			
				}
			}
		});			
	});	//end of id_check	
	
});



	
	
</script>


<body>
<header>

<!-- Navigation -->
<%if(sid==null){ %>
<div class="topnav shadow" id="navbar">
	<div class="nav">
	
  <a class="activea" href="http://localhost:8080/coinweb/index.jsp"><span>Coinweb</span></a>
  
  <div class="topnav-right">
     <div class="cd-main-nav__list js-signin-modal-trigger">
    
    <a class="cd" href="#contact">�ŷ��ϱ�</a>

			
				<!-- inser more links here -->
				
				<a class="cd-main-nav__item cd-main-nav__item--signin" href="#0" data-signin="login">�α���</a>
				<a class="cd-main-nav__item cd-main-nav__item--signup" href="#0" data-signin="signup">ȸ������</a>
			<div class="dropdown">
 	<button  class="dropbtn" href="#contact">Ŀ�´�Ƽ<i class="fa fa-caret-down"></i></button>
 	 <div class="dropdown-content">
      <a href="http://localhost:8080/coinweb/Rangking/Rangk.jsp">��ŷ</a>
      <a href="#">�����Խ���</a>
     <!--   <a href="#">���μҽ�</a>-->
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
		</div>
	</div>
	    <%}else{ %>
	    <div class="topnav shadow" id="navbar">
	<div class="nav">
	
  <a class="activea" href="http://localhost:8080/coinweb/index.jsp"><span>Coinweb</span></a>
  
  <div class="topnav-right">
     <div class="cd-main-nav__list js-signin-modal-trigger">
    
    <a class="cd" href="#contact">�ŷ��ϱ�</a>

			
				<!-- inser more links here -->
				
				<a class="cd-main-nav__item cd-main-nav__item--signin" href="http://localhost:8080/coinweb/login/logout.jsp" >�α׾ƿ�</a>
				
				<div class="dropdown">
				<button  class="dropbtn" href="#contact" id="nname"><%=sid%><i class="fa fa-caret-down"></i></button>
				
				 <div class="dropdown-content">
      <a href="http://localhost:8080/coinweb/wallet/wallet.jsp">�� ����</a>
      <a href="#">��й�ȣ ����</a>
    </div>
    </div>
			<div class="dropdown">
 	<button  class="dropbtn" href="#contact">Ŀ�´�Ƽ<i class="fa fa-caret-down"></i></button>
 	 <div class="dropdown-content">
      <a href="http://localhost:8080/coinweb/Rangking/Rangk.jsp">��ŷ</a>
      <a href="#">�����Խ���</a>
     <!--   <a href="#">���μҽ�</a>-->
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
		</div>
	</div>
	    
	    
	    
	    <%} %>
	
	<div class="cd-signin-modal js-signin-modal"> <!-- this is the entire modal form, including the background -->
		<div class="cd-signin-modal__container"> <!-- this is the container wrapper -->
			<ul class="cd-signin-modal__switcher js-signin-modal-switcher js-signin-modal-trigger">
				<li><a href="#0" data-signin="login" data-type="login">�α���</a></li>
				<li><a href="#0" data-signin="signup" data-type="signup">ȸ������</a></li>
			</ul>

			<div class="cd-signin-modal__block js-signin-modal-block" data-type="login"> <!-- log in form -->
				<form name="loginForm" action="http://localhost:8080/coinweb/login/login_controller.jsp" method="post"class="cd-signin-modal__form" >
					<p class="cd-signin-modal__fieldset">
						
					
						<label class="cd-signin-modal__label cd-signin-modal__label--email cd-signin-modal__label--image-replace" for="signin-email">E-mail</label>
						<input class="cd-signin-modal__input cd-signin-modal__input--full-width cd-signin-modal__input--has-padding cd-signin-modal__input--has-border" name="email" id="signin-email"  placeholder="E-mail" >
					
					</p>

					<p class="cd-signin-modal__fieldset">
						<label class="cd-signin-modal__label cd-signin-modal__label--password cd-signin-modal__label--image-replace" for="signin-password">Password</label>
						<input class="cd-signin-modal__input cd-signin-modal__input--full-width cd-signin-modal__input--has-padding cd-signin-modal__input--has-border" name="pass"  id="signin-password" type="password"  placeholder="Password" >
						
					</p>

					<p class="cd-signin-modal__fieldset">
						<input type="checkbox" id="remember-me" checked class="cd-signin-modal__input ">
						<label for="remember-me">����</label>
					</p>

					<p class="cd-signin-modal__fieldset">
						<button class="cd-signin-modal__input cd-signin-modal__input--full-width" id="btnLogin" type="submit" >�α���</button>
					</p>
				</form>
				
				
			</div> <!-- cd-signin-modal__block -->

			<div class="cd-signin-modal__block js-signin-modal-block" data-type="signup"> <!-- sign up form -->
				<form name="joinForm" action="http://localhost:8080/coinweb/join/join_controller.jsp" method="post" class="cd-signin-modal__form">
				
				<p class="cd-signin-modal__fieldset">
						<label class="cd-signin-modal__label cd-signin-modal__label--email cd-signin-modal__label--image-replace" for="signup-email">E-mail</label>
						<input  class="cd-signin-modal__input cd-signin-modal__input--full-width cd-signin-modal__input--has-padding cd-signin-modal__input--has-border" id="signup-email"  name="id" type="email" placeholder="�̸��� �Է�" >
						<span id="id_msg"></span>
					</p>
				
			
					<p class="cd-signin-modal__fieldset">
						<label class="cd-signin-modal__label cd-signin-modal__label--username cd-signin-modal__label--image-replace" for="signup-username">Username</label>
						<input class="cd-signin-modal__input cd-signin-modal__input--full-width cd-signin-modal__input--has-padding cd-signin-modal__input--has-border" id="signup-username"  name="name" type="text" placeholder="�̸� �Է�" >
						
					</p>

					

					<p class="cd-signin-modal__fieldset">
						<label class="cd-signin-modal__label cd-signin-modal__label--password cd-signin-modal__label--image-replace" for="signup-password">Password</label>
						<input class="cd-signin-modal__input cd-signin-modal__input--full-width cd-signin-modal__input--has-padding cd-signin-modal__input--has-border" id="pass" name="pass" type="password"  placeholder="��й�ȣ 10�� �̻��Է�">
						<span id="msg"></span>
					</p>
					<p class="cd-signin-modal__fieldset">
						<label class="cd-signin-modal__label cd-signin-modal__label--password cd-signin-modal__label--image-replace" for="signup-password">Password</label>
						<input class="cd-signin-modal__input cd-signin-modal__input--full-width cd-signin-modal__input--has-padding cd-signin-modal__input--has-border" id="cpass" type="password"  placeholder="��й�ȣ ���Է�">
						
					</p>

					<p class="cd-signin-modal__fieldset">
						<input type="checkbox" id="agree" name="agree" class="cd-signin-modal__input ">
						<label for="accept-terms">�̿��� �� �������� ����</a></label>
					</p>

					<p class="cd-signin-modal__fieldset">
						<button class="cd-signin-modal__input cd-signin-modal__input--full-width cd-signin-modal__input--has-padding"  id="btnJoin" type="submit" >ȸ������</button>
					</p>
					
				</form>
			</div> <!-- cd-signin-modal__block -->
			
		
			
		</div> <!-- cd-signin-modal__container -->
	</div> <!-- cd-signin-modal -->
	
      


<!-- Navigation �� -->



<!--<script>
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
}-->
</header>

</body>
<script src="http://localhost:8080/coinweb/js/main.js"></script>
<script src="http://localhost:8080/coinweb/js/test2.js"></script>


</html>
