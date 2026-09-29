<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>user profile details</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-times.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style2 {color: #009966}
.style3 {color: #FFFFFF}
.style4 {color: #FF0000}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1>Efficacious Novel Intrusion Detection System for Cloud Computing Environment</h1>
      </div>
      <div class="menu_nav">
        <ul>
		<%String admin=(String)application.getAttribute("admin"); %>
          <li><a href="adminmain.jsp"><span>Home</span></a></li>
          <li><a href="#"><span><%=admin%></span></a></li>
		  <li><a href="adminlogin.jsp"><span>Logout</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>User Profile Details </span></h2>
          <div class="clr"></div>
          <div class="post_content">
            <p align="justify">	
			<table width="539" height="234" border="1.5" align="left"  cellpadding="0" cellspacing="0"  >
	
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>

					<%
						String id = request.getParameter("mid");
			
						
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						   	String query="select * from user where id='"+id+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(8);
								s6=rs.getString(10);

					%>
					<tr>
					<td width="196" rowspan="8"><div class="style7" style="margin:10px 13px 10px 13px;" >
				 <input  name="image" type="image" src="profile_pic.jsp?id=<%=i%>&type=<%="user"%>" style="width:170px; height:200px;"/></div></td>
					</tr>
					
					<tr>
				 	  <th width="135" height="41" bgcolor="#FF0000" class="style2"><div align="left" class="style6 style3">Name</div></th>
 					  <td width="200"><div align="center"><span class="style4">
				      <%out.println(s1);%>
 					    </span></div></td>
					</tr>
					<tr>
					  <th height="35" bgcolor="#FF0000"><div align="left" class="style6 style3">E-Mail</div></th>
					  <td><div align="center"><span class="style4">
				      <%out.println(s2);%>
					    </span></div></td>
					</tr>
					<tr>
					  <th height="34" bgcolor="#FF0000"><div align="left" class="style6 style3">Mobile</div></th>
					  <td><div align="center"><span class="style4">
				      <%out.println(s3);%>
					    </span></div></td>
					</tr>
					<tr>
					  <th height="34" bgcolor="#FF0000" ><div align="left" class="style6 style3">Date Of Birth </div></th>                    	
						<td><div align="center"><span class="style4">
					    <%out.println(s4);%>
						  </span></div></td>
					</tr>
					<tr>
					  <th height="33" bgcolor="#FF0000"><div align="left" class="style6 style3">Status</div></th>
						  <td><div align="center"><span class="style4">
					      <%out.println(s6);%>
						    </span></div></td>
					</tr>
					<tr>
					  <th height="55" bgcolor="#FF0000"><div align="left" class="style6 style3">Address</div></th>
						  <td><div align="center"><span class="style4">
					      <%out.println(s5);%>
						    </span></div></td>
					</tr>
					
					 
				<%
					
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
	  </table>
				</p>
          
          </div>
          <div class="clr"></div>
         
        </div>
        <p align="right" class="pages"><a href="A_View_All_Users.jsp">Back</a></p>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="adminmain.jsp">Home</a></li>
            <li><a href="adminlogin.jsp">Logout</a></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">&nbsp;</h2>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <p class="lf"></p>
      <p class="rf"></p>
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div></body>
</html>
