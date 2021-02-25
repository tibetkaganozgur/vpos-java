 <%@page contentType="text/html" pageEncoding="UTF-8"%>                                
 <html>                                                                                    
 	<head>                                                                                
 		<title>PayFor - 3D Host Odeme Sayfasi</title>                                      
 		<link href="Site.css" rel="stylesheet" type="text/css" />                   
 	</head>                                                                               
 	<body>                                                                                
 		<center>                                                                          
 			<%                                                                            
 			if("1".equalsIgnoreCase(request.getParameter("3DStatus")))                
 			{                                                                             
 			%>                                                                            
 				<h2><b>3D Kullanici Dogrulama Basarili</b></h2>                                       
 			<%                                                                            
 			}else{                                                                        
 			%>                                                                            
 				<h2><b>3D Kullanici Dogrulama Hatali.</b></h2>                                     
 			<%                                                                            
 			}                                                                             
 			%>                                                                            
 			<%                                                                            
 			if("00".equalsIgnoreCase(request.getParameter("ProcReturnCode")))         
 			{                                                                             
 			%>                                                                            
 				<h2><b> Odeme Basarili.</b></h2>                                      
 			<%                                                                            
 			}else{                                                                        
 			%>                                                                            
 				<h2><b> Odeme Hatali.</b></h2>                                    
 			<%                                                                            
 			}                                                                             
 			%>                                                                            
 			<table  class="tableClass">                                                 
 				<tr>                                                                      
 					<td colspan="2">                                                    
 						<h1>PayFor - Donus Parametreleri</h1>                                
 					</td>                                                                 
 				</tr>                                                                     
 				<tr>                                                                      
 					<td style="text-align: right"><b>Parametre Adi</b></td>     
 					<td style="text-align: left"><b>Parametre Degeri</b></td>     
 				</tr>                                                                     
 				<%                                                                        
 				   String [] paymentParameters = new String[]{"AuthCode","Response","HostRefNum","ProcReturnCode","TransId","ErrMsg"};
 				   java.util.Enumeration enu = request.getParameterNames();                
 							while(enu.hasMoreElements())                                   
 								{                                                          
 									String param = (String)enu.nextElement();              
 									String val = (String)request.getParameter(param);      
 									boolean ok = true;                                     
 									for(int i=0;i<paymentParameters.length;i++)            
 									{                                                      
 										if(param.equalsIgnoreCase(paymentParameters[i]))   
 										{                                                  
 											ok = false;                                    
 											break;                                         
 										}                                                  
 									}                                                      
 									if(ok)                                                 
 										out.println("<tr><td style='text-align: right'>"+param+"</td>"+"<td style='text-align: left'>"+val+"</td></tr>");
 								}
 				%>         
 			</table>       
 		</center>          
 	</body>                
 </html>                    

