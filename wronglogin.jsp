<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>wrong login page</title>
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
.style3 {color: #FF3333}
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
          <li><a href="index.html"><span>Home</span></a></li>
          <li><a href="userlogin.jsp"><span>User</span></a></li>
		  <li><a href="adminlogin.jsp"><span>Admin</span></a></li>
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
          <h2><span> Login Failed..!!! </span></h2>
          <div class="clr"></div>
          <div class="img"><img src="images/img1.jpg" width="198" height="208" alt="" class="fl" /></div>
          <div class="post_content">
            <p align="justify">
		
		<table width=405 height="267" border=0 align="center" cellpadding=0 cellspacing=0>
<tr>
<td width="405" height="189" align=center valign="middle"><div align="center"><span class="style9 style3">Sorry.<BR>
        <BR>
          Your login failed.<BR>
          
           
            </span>
  <TABLE cellSpacing=0 cellPadding=0 border=0 height="7">
    <TR><TD height=7 class="style9 style3" ></TD></TR>
    </TABLE>
            <span class="style9 style3">This happens due to - Incorrect Username / Incorrect password<BR>
            </span>
            <TABLE cellSpacing=0 cellPadding=0 border=0 width="10">
    <TR>
      <TD width="10" height=9 class="style9 style3"></TD></TR>
    </TABLE>
            <span class="style9 style3">In case you have forgotten your password,<BR>
            </span>
            <TABLE cellSpacing=0 cellPadding=0 border=0>
    <TR><TD height=9 class="style9 style3" ></TD></TR>
    </TABLE>
            <span class="style9 style3">click&nbsp; here to re enter correct&nbsp; username or password on homepage</span><span class="style9 style2">.</span><BR>
 <BR>
      <%
String type=(String)application.getAttribute("type");
if(type.equalsIgnoreCase("user")){
%>
      <a href="userlogin.jsp">Click here to go back</a>	<br />	
        <a href="index.html"><span class="">Home Page</span></a>
      </BR>
      <%}
else if(type.equalsIgnoreCase("admin")){
%>
      <a href="adminlogin.jsp">Click here to go back</a><BR>
      <a href="index.html"><span>Home Page</span></a>
      <%}%>
    </font></div></td>
</tr>
</table>
	  </p>
          </div>
          <div class="clr"></div>
        </div>
        <p class="pages"><small></small></p>
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
            <li><a href="index.html">Home</a></li>
            <li><a href="userlogin.jsp">User</a></li>
            <li><a href="adminlogin.jsp">Admin</a></li>
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
