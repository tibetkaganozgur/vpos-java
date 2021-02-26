<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
 <html>
     <head>
         <title>PayFor - 3D Host</title>
         <meta http-equiv="Content-Language" content="tr">
         <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-9">
         <link href="Site.css" rel="stylesheet" type="text/css" />
     </head>
     <body>


<%	
String MbrId="11";                                                        //Kurum Kodu
String MerchantID="9092476";                                              //Language_MerchantID
String MerchantPass="CE8Xm8cp";                                          //Language_MerchantPass
String UserCode="paycorehasan";                                                  //Kullanici Kodu
String UserPass="aq4Cv";                                                  //Kullanici Sifre
String SecureType="3DHost";                                                    //Language_SecureType
String TxnType="Auth";                                                         //Islem Tipi
String InstallmentCount="0";                                                   //Taksit Sayisi
String Currency="949";                                                  //Para Birimi
String OkUrl="https://vpos-iframe-java.herokuapp.com//VPOSpayment.jsp";                                                        //Language_OkUrl
String FailUrl="https://vpos-iframe-java.herokuapp.com//VPOSpayment.jsp";                                                    //Language_FailUrl
String OrderId="";                                                    //Siparis Numarasi
String OrgOrderId="";                                              //Orijinal Islem Siparis Numarasi
String PurchAmount="1";                                                        //Tutar
String Lang="TR";                                                          //Language_Lang

			   String rnd = new java.util.Date().toString(); 
            String hash = MbrId + OrderId + PurchAmount + OkUrl + FailUrl + TxnType + InstallmentCount + rnd + MerchantPass;
            java.security.MessageDigest sha = java.security.MessageDigest.getInstance("SHA-1");
            hash = (new sun.misc.BASE64Encoder()).encode(sha.digest(hash.getBytes()));
%>

<center>	
<form method="post" action="https://payfortestfibabanka.cordisnetwork.com/Mpi/3DHost.aspx">
			<table class="tableClass">
            	<tr>
					<td colspan='2'>
						<h1>
							PayFor - 3D Host
						</h1>
					</td>
				</tr>
             <tr>
             	<td align='center' colspan='2'>
             		<input type='submit' value='Gonder' class='buttonClass' />
             	</td>
             </tr>
			</table>
 
             <input type="hidden" name="MbrId" value="<%=MbrId%>">
             <input type="hidden" name="MerchantID" value="<%=MerchantID%>">
             <input type="hidden" name="UserCode" value="<%=UserCode%>">
             <input type="hidden" name="UserPass" value="<%=UserPass%>">
             <input type="hidden" name="SecureType" value="<%=SecureType%>">
             <input type="hidden" name="TxnType" value="<%=TxnType%>">
             <input type="hidden" name="InstallmentCount" value="<%=InstallmentCount%>">
             <input type="hidden" name="Currency" value="<%=Currency%>">
             <input type="hidden" name="OkUrl" value="<%=OkUrl%>">
             <input type="hidden" name="FailUrl" value="<%=FailUrl%>">
             <input type="hidden" name="OrderId" value="<%=OrderId%>">
             <input type="hidden" name="OrgOrderId" value="<%=OrgOrderId%>">
             <input type="hidden" name="PurchAmount" value="<%=PurchAmount%>">
             <input type="hidden" name="Lang" value="<%=Lang%>">
             <input type="hidden" name="Rnd" value="<%=rnd%>">
             <input type="hidden" name="Hash" value="<%=hash%>">
 
        </form>
    </center>
</body>
</html>



