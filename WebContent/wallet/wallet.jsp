<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" href="http://localhost:8080/coinweb/CSS/coin.css">

<title>Insert title here</title>
</head>
<body>


	<jsp:include page="../header_login.jsp" />


<section class="wallet">

<button class="tablink" onclick="openPage('mywallet', this, '#e8e8e8')" id="defaultOpen">�� ����</button>
<button class="tablink" onclick="openPage('mybusiness', this, '#e8e8e8')">�ŷ�����</button>
<button class="tablink" onclick="openPage('myreturn', this, '#e8e8e8')">���ͷ�</button>

<div id="mywallet" class="tabcontent">
  <h1>������</h1>
  <h3>���� ���� ���� �ڻ�</h3>
  <div class="mywalletcoin btc">
  <p style="font-weight: bold;">BTC </p> <p>10.055829774</p>
  </div>
  <div class="mywalletcoin ubs">
  <p style="font-weight: bold;">USD </p> <p>10.055829774</p>
  </div>
  <div class="mywalletcoin krw">
  <p style="font-weight: bold;">KRW </p> <p>10.055829774</p>
  </div>
    <h3>ȭ�� ����</h3>
     <table>
     		<tr>
     			<td>����</td>
     			<td>�̸�</td>
     			<td>������</td>
     			<td>�ŷ� �����</td>
     			<td>BTC ��ġ</td>
     		</tr>
     		<tr>
     			<th colspan="5">�ŷ������� �����ϴ�.</th>
     		</tr>
     </table>
</div>

<div id="mybusiness" class="tabcontent">
   <h1>�ŷ�����</h1>
  <h3>������� �ŷ�</h3>
     <table>
     		<tr>
     			<td>����</td>
     			<td>�ð�</td>
     			<td>����</td>
     			<td>����</td>
     			<td>�ŷ���</td>
     			<td>����</td>
     		</tr>
     		<tr>
     			<th colspan="6">�ŷ������� �����ϴ�.</th>
     		</tr>
     </table>

  <h3>ä��� �ŷ�</h3>
      <table>
     		<tr>
     			<td>����</td>
     			<td>�ð�</td>
     			<td>����</td>
     			<td>����</td>
     			<td>�ŷ���</td>
     			<td>����</td>
     		</tr>
     		<tr>
     			<th colspan="6">�ŷ������� �����ϴ�.</th>
     		</tr>
     </table>

</div>
</div>

<div id="myreturn" class="tabcontent">
   <h1>���ͷ�</h1>
  <h3>�ڱ� �� ���� �ڻ�</h3>
  <p>USD�� ������� ���˴ϴ�.</p>
  <p>�� ���ͷ� ��ŷ 1������ ����� ���޵˴ϴ�.</p>
</div>

</section>
 	<jsp:include page="../footer.jsp" />


<script>
function openPage(pageName,elmnt,color) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablink");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].style.backgroundColor = "";
    }
    document.getElementById(pageName).style.display = "block";
    elmnt.style.backgroundColor = color;

}
// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>

	

</body>
</html>