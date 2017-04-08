<html>
<body bgcolor="#d0d0d0">
<br></br>
<br></br>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<table>
<tr>
<th>name</th>
<th>id</th>
<th>age</th>
<th>branch</th>
</tr>
<%
    try{
Connection con=null;
Statement stmt=null;
Class.forName("com.mysql.jdbc.Driver");
 Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/saugat","root","");
        stmt=cn.createStatement();
String s2=request.getParameter("email");

ResultSet res=stmt.executeQuery("select * from saugat1 where email='"+s2+"'");
while(res.next())
{
%>
<tr>
<td><%=res.getString("email")%></td>
<td><%=res.getString("email")%></td>
<td><%=res.getString("email")%></td>
<td><%=res.getString("email")%></td>
</tr>


<%
}}catch(Exception ex){
    out.print(ex);}
%>
<h1> this can be done </h1>
</table>
</body>
</html>