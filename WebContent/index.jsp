<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="http://localhost:8080/coinweb/CSS/coin.css">
<script src="js/jquery-3.3.1.min.js"></script>
<script>
function bithumb (){
	$.get('https://api.bithumb.com/public/ticker/ALL', function(data) {
		var bithumb_array = ['BTC','ETH','DASH','LTC','ETC','XRP','BCH','XMR','QTUM','ZEC','BTG','EOS'];
		for (var key in bithumb_array){
			var bithumb_now = bithumb_array[key];
			var opening_price = data['data'][bithumb_now]['opening_price'];
			var closing_price = data['data'][bithumb_now]['closing_price'];
			var bithumb_krw = parseInt(closing_price);
			var cpYesterday = closing_price - opening_price
			var percent = (cpYesterday / opening_price) * 100.0;
			$('#'+bithumb_now).html(bithumb_krw+'KRW');
			if(percent > 0)
				$('#p_'+bithumb_now).html('('+percent.toFixed(2)+'%)').css("color","#43A047");
			else if(percent<0)
				$('#p_'+bithumb_now).html('('+percent.toFixed(2)+'%)').css("color","#E53935");
			else
				$('#p_'+bithumb_now).html('('+percent.toFixed(2)+'%)');
		}
	});
}
function proc() {
	try {
		bithumb();
	} catch(e){			
    } finally {
        setTimeout("proc()", 1000);
    }
}
</script>
<title>Insert title here</title>
</head>
<body onload="proc()">

	<jsp:include page="header.jsp" />

 <!-- ���� �̹���.. �������� -->
 <section class="PolyBackground" >
	<div class="img">
	<div class="PolyBackground_text">
		<h1>����! ��ȣȭ�� ���ǰŷ�!<br> �ٸ� ������ ���ͷ��� �����غ�����.</h1><br>
		<h3>���� �ŷ����� �ǽð� �����Ϳ� ����Ͽ� <br>���� �ŷ��� �غ�����!</h3>
		<button class="btn">���ǰŷ� �����ϱ�</button>
		</div>
</div>
</section>

   <!-- ���� �̹���.. ��-->
<!-- �ڽ� -->
<div class="coinBox">
<h3>���� �� 12���� ����ȭ�� �����մϴ�.</h3><br>
<a href="#"><div class="box shadow1">
<img src="http://localhost:8080/coinweb/images/btc.png"><br>
<span class="coin">Bitcoin</span><br><br>
 <div class="content33">
    <p>����ü� <span id="p_BTC"></span></p>
    <h5 id="BTC"></h5>
  </div>
</div></a>
<a href="#">
<div class="box shadow1">
<img src="http://localhost:8080/coinweb/images/bch.png"><br>
<span class="coin">Bitcoin Cash</span><br><br>
 <div class="content33">
    <p>����ü� <span id="p_BCH"></span></p>
    <h5 id="BCH"></h5>
  </div>
</div></a>
<a href="#">
<div class="box shadow1">
<img src="http://localhost:8080/coinweb/images/eth.png"><br>
<span class="coin">Ethereum</span><br><br>
 <div class="content33">
    <p>����ü� <span id="p_ETH"></span></p>
    <h5 id="ETH"></h5>
  </div>
</div></a>
<a href="#">
<div class="box shadow1">
<img src="http://localhost:8080/coinweb/images/etc.png"><br>
<span class="coin">Ethereum Classic</span><br><br>
 <div class="content33">
    <p>����ü� <span id="p_ETC"></span></p>
    <h5 id="ETC"></h5>
  </div>
</div></a>
<a href="#">
<div class="box shadow1">
<img src="http://localhost:8080/coinweb/images/litecoin.png"><br>
<span class="coin">Litecoin</span><br><br>
 <div class="content33">
    <p>����ü� <span id="p_LTC"></span></p>
    <h5 id="LTC"></h5>
  </div>
</div></a>
<a href="#">
<div class="box shadow1">
<img src="http://localhost:8080/coinweb/images/ripple.png"><br>
<span class="coin">Ripple</span><br><br>
 <div class="content33">
    <p>����ü� <span id="p_XRP"></span></p>
    <h5 id="XRP"></h5>
  </div>
</div></a>
<a href="#">
<div class="box shadow1">
<img src="http://localhost:8080/coinweb/images/dash.png"><br>
<span class="coin">Dash</span><br><br>
 <div class="content33">
    <p>����ü� <span id="p_DASH"></span></p>
    <h5 id="DASH"></h5>
  </div>
</div></a>
<a href="#">
<div class="box shadow1">
<img src="http://localhost:8080/coinweb/images/xmr.png"><br>
<span class="coin">Monero</span><br><br>
 <div class="content33">
    <p>����ü� <span id="p_XMR"></span></p>
    <h5 id="XMR"></h5>
  </div>
</div></a>
<a href="#">
<div class="box shadow1">
<img src="http://localhost:8080/coinweb/images/qtum.png"><br>
<span class="coin">Quantum</span><br><br>
 <div class="content33">
    <p>����ü� <span id="p_QTUM"></span></p>
    <h5 id="QTUM"></h5>
  </div>
</div></a>
<a href="#">
<div class="box shadow1">
<img src="http://localhost:8080/coinweb/images/eos.png"><br>
<span class="coin">Eos</span><br><br>
 <div class="content33">
    <p>����ü� <span id="p_EOS"></span></p>
    <h5 id="EOS"></h5>
  </div>
</div></a>
<a href="#">
<div class="box shadow1">
<img src="http://localhost:8080/coinweb/images/btg.png"><br>
<span class="coin">Bitcoin Gold</span><br><br>
 <div class="content33">
    <p>����ü� <span id="p_BTG"></span></p>
    <h5 id="BTG"></h5>
  </div>
</div></a>
<a href="#">
<div class="box shadow1">
<img src="http://localhost:8080/coinweb/images/zec.png"><br>
<span class="coin">Zcash</span><br><br>
 <div class="content33">
    <p>����ü� <span id="p_ZEC"></span></p>
    <h5 id="ZEC"></h5>
  </div>
</div></a>

<button class="boxbtn shadow2">�ŷ��� ����</button>
</div>




 

 
      <!-- ������������� -->
   
  
		<section class="content-style">		
	
			<form class="mycgv">
				 <a href="#"><span class="span1">
				 <img src="http://localhost:8080/coinweb/images/iconmonstr-smartphone-16-240 (1).png">
				 <br><h2>���� �� ���</h2><b>���� �ٷ� ��ġ�ϼ���</b></span></a>
				<a href="http://localhost:8080/coinweb/Rangking/Rangk.jsp"><span class="span2">
				<img src="http://localhost:8080/coinweb/images/iconmonstr-award-24-120.png">
				<h2>��ŷ �ý���</h2> <b>�ٸ������� �����غ�����</b></span></a>
			</form>
		</section>		

   

       <!-- �������������  ��-->
 


  <footer>
  	<jsp:include page="footer.jsp" />
  	</footer>
	</body>

</html>