<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>all users list page</title>
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
          <h2><span>View All Users </span></h2>
          <div class="clr"></div>
          <div class="post_content">
            <p align="justify">	
			<table width="626" height="79" border="3" align="left"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
        <tr>
          <th height="42" bgcolor="#FF0000"><span class="style10 style6 style5 style3">Username</span></th>
              <th bgcolor="#FF0000"><span class="style10 style6 style5 style3">Email</span></th>
              <th bgcolor="#FF0000"><span class="style10 style6 style5 style3">Mobile Number</span></th>
              <th bgcolor="#FF0000"><span class="style10 style6 style5 style3">status</span></th>
              <th bgcolor="#FF0000"><span class="style10 style6 style5 style3">View</span></th>
        </tr>
            <%@ include file="connect.jsp" %>
            <%
String s1,s2,s3,s4,s5,s6,s7,s8,s9;
int i=0;
try 
{
	String query="select * from user"; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	{
		i=rs.getInt(1);
		s1=rs.getString(2);
		s2=rs.getString(4);
		s4=rs.getString(5);
		s3=rs.getString(10);
	
			%>
            <tr>
              <td  width="82" height="31" align="center" valign="middle" ><span class="style4">
                <%out.println(s1);%>
              </span></td>
              <td  width="141" height="31" align="center" valign="middle"><span class="style4">
                <%out.println(s2);%>
              </span></td>
              <td  width="119" height="31" align="center" valign="middle"><span class="style4">
                <%out.println(s4);%>
              </span></td>
              <%
						if(s3.equalsIgnoreCase("waiting"))
						{
						
						%>
              <td  width="72" height="31" align="center" valign="middle"><a href="conformuser.jsp?mid=<%=i%>&utype=<%="user"%>" class="style13 style7 style4">waiting&nbsp;</a></td>
              <%
						}
						else
						{ 
						%>
              <td  width="93" height="31" align="center" valign="middle"><span class="style4">
                <%out.println(s3);%>
              </span></td>
              <%
						}
						
						%>
              <td  width="101" valign="middle" height="31" style="color:#000000;"align="center"><a href="A_View_User_Details.jsp?mid=<%=i%>" class="style4"><span class="style9">more info..</span>&nbsp;</a></td>
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
        <p align="right" class="pages"><a href="adminmain.jsp">Back</a></p>
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
  <div class="footer"></div>
</div>
<div align=center></div></body>
</html>
