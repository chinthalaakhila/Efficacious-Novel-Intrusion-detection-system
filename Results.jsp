
<%@ include file="connect.jsp"%>

<%
try
{

ResultSet rs=connection.createStatement().executeQuery("SELECT count(sta),sta FROM  datasets group by sta ");

%><html>
<head>
<title>Results</title>
<script type="text/javascript" src="sources/jscharts.js"></script>
</head>
<body>
<div id="graph">Loading graph...</div>

<div align="center">
    <script type="text/javascript">
var myData=new Array();
var colors=[];
var m=50;
<%
	int i=0;
	
	String s1=null;
	
	while(rs.next())
	{
	 s1=rs.getString(2);
	int  s2=Integer.parseInt(rs.getString(1));
	
	
	
	%>
	
	myData["<%=i%>"]=["<%= s1%>",<%=s2%>];
      m=m+150;  
	<%
	i++;}
	%>
	
	var myChart = new JSChart('graph', 'pie');
	myChart.setDataArray(myData);
	myChart.setBarColor('#42aBdB');
	myChart.setBarOpacity(0.8);
	myChart.setSize(m, 500);
	myChart.setBarBorderColor('#D9EDF7');
	myChart.setBarValues(true);
	myChart.setTitle('Intrusion Detection');
	myChart.setTitleColor('#8C8383');
	myChart.setAxisColor('#777E89');
	myChart.setAxisValuesColor('#777E81');
	myChart.draw();
	
  </script>
   </div>
</body>
</html>
<%
}
catch(Exception e)
{
e.printStackTrace();
}
%>

