<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>user registration page</title>
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
.style1 {color: #FF3300}
.style5 {color: #009933}
.style7 {color: #009933; font-size: 14px; }
.style8 {color: #FFFFFF}
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
          <li class="active"><a href="userlogin.jsp"><span>User</span></a></li>
          <li><a href="u_register.jsp"><span>Register</span></a></li>
		  <li><a href="adminlogin.jsp"><span>Server</span></a></li>
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
          <h2><span> User Registration </span></h2>
          <div class="clr"></div>
<!--          <div class="img"><img src="images/img1.jpg" width="198" height="208" alt="" class="fl" /></div>
-->          <div class="post_content">
            <p align="justify">
			 <%String msg=(String)application.getAttribute("msg");
			if(msg!=null)
			{
			%>
			<h3> <span class="style7"> <%=msg%></span></h3>
			<%
			}
			application.removeAttribute("msg");
			%>
          <form action="u_insertdata.jsp" method="post" enctype="multipart/form-data">
			<strong>Note :</strong> <span class="style1">*</span> = <span class="style1">Required </span></p>
      <table width="456">
					    <tr>
                          <th width="191" height="39" bgcolor="#FF0000"><div align="left" class="style8">User Name *</div></th>
                          <td width="288"><input id="name" name="userid" class="text" /></td>
                        </tr>
                        <tr>
                          <th height="39" bgcolor="#FF0000"><div align="left" class="style8">Password *</div></th>
                          <td><input type="password" id="password" name="pass" class="text" /></td>
                        </tr>
                        <tr>
                          <th height="40" bgcolor="#FF0000"><div align="left" class="style8">Email Address *</div></th>
                          <td><input id="email" name="email" class="text" /></td>
                        </tr>
                        <tr>
                          <th height="41" bgcolor="#FF0000"><div align="left" class="style8">Mobile Number *</div></th>
                          <td><input id="mobile" name="mobile" class="text" /></td>
                        </tr>
                        <tr>
                          <th height="38" bgcolor="#FF0000"><div align="left" class="style8">Date of Birth *</div></th>
                          <td><input id="dob" name="dob" class="text" /></td>
                        </tr>
                        <tr>
                          <th height="43" bgcolor="#FF0000"><div align="left" class="style8">Select Gender *</div></th>
                          <td><select id="s1" name="gender" style="width:170px;" class="text">
                            <option>--Select--</option>
                            <option>MALE</option>
                            <option>FEMALE</option>
                          </select></td>
                        </tr>
                        <tr>
                          <th height="65" bgcolor="#FF0000"><div align="left" class="style8">Address *</div></th>
                          <td><textarea id="address" name="address" rows="3" cols="21"></textarea></td>
                        </tr>
                        <tr>
                          <th height="37" bgcolor="#FF0000"><div align="left" class="style8">Enter Pincode *</div></th>
                          <td><input id="pincode" name="pincode" class="text" /></td>
                        </tr>
                        <tr>
                          <th height="34" bgcolor="#FF0000"><div align="left" class="style8">Select Profile Picture *</div></th>
                          <td><input type="file" id="pic" name="pic" class="text" /></td>
                        </tr>
                        <tr>
                          <th height="43" rowspan="3"></th>
                          <td align="left" valign="middle"> <p>&nbsp;</p>
                            <p><input name="submit" type="submit" value="REGISTER" /></p>
                            <div align="right">
                            <p align="right"><a href="userlogin.jsp" class="style17 style5">Back</a></p>
                          </div></td>
                        </tr>
            </table>
			</form>
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
            <li><a href="adminlogin.jsp">Server</a></li>
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
