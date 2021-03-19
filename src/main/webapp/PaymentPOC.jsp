<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
<title>Payment POC</title>
</head>
<body>

	<h1>Payment POC</h1>

	<button class="btn-default" id="iframebutton" onClick="function clicked () {
        console.log('makePayment via iframe clicked');
    var i = 'top=0,left=0,width=' + window.outerWidth - 50 + ',height=' + window.outerHeight - 50 + ',status=yes,toolbar=no,scrollbars=yes,menubar=no,location=no,resizable=yes';
    window.open('iframe.jsp', '3dpaymentwindows', i)
};clicked()">Iframe Ödeme isteği baslat</button>
	
	<a href="VPOS.jsp">Uygulama içi ödeme isteği başlat</a>
        
</body>
</html>
