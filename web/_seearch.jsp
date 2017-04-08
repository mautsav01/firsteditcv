
   
  <%@page import="java.sql.*"%>
<%@page import="java.util.*"%>


<html>
<body width="100%" height="100%">
<br></br>
<br></br>

<center>




<table style="width: 100%" >

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

<td>

<div class="boxshadow">
<table>
<tr>
<td colspan="2"><img src="<%=res.getString("fil1")%>" width="400px" height="200px">
    <h2>
        <%=res.getString("fname")%>&nbsp;&nbsp;<%=res.getString("lname")%>
    </h2>
    <style>
        h2{
            color:Orange;
            font-size: 28px;
        }
        p{
            Color:red;
            font-size: 28px;
        }   
        body{
            
            background-image: url("black.jpg");
           
        }
        
    </style>
</td>

</tr>

<tr>
    <td><img src="email.png" width="70px" height="70px"></td><td><h2> <%=res.getString("tadd")%></h2></td>

</tr>

<tr>
    <td><img src="address.jpg" width="70px" height="70px"></td><td> <h2><%=res.getString("email")%></h2></td>

</tr>


<tr>
    <td><img src="phone.png" width="70px" height="70px"></td><td><h2> <%=res.getString("phoneno")%></h2></td>

</tr>


<tr>
    <td><p>Father's name:</p></td><td> <h2><%=res.getString("faname")%></h2></td>

</tr>
<tr>
    <td><p>Mother's name:</P></td><td> <h2><%=res.getString("mname")%></h2></td>

</tr>

<tr>
    <td><p>Gender:</p></td><td><h2> <%=res.getString("gender")%></h2></td>

</tr>
<tr>
    <td><p>Marital Status:</p></td><td> <h2><%=res.getString("mstatus")%></h2></td>

</tr>
<tr>
    <td><p>Blood group:</p></td><td> <h2><%=res.getString("bg")%></h2></td>

</tr>

<tr>
    <td><p>Permanent Address:</p></td><td> <h2><%=res.getString("paddress")%></h2></td>

</tr>
<tr>

</tr>
<tr>
    <td><p>About Yourself:</p></td><td><h2> <%=res.getString("wbt")%></h2></td>

</tr>



</table>
</td>



</div>
<td align="center">

<div class="manage">

    <p><b>Work Experience and Academic Qualification</b></p>
<br><br>
 

<table align="justify">
<tr>
    <td align="center"><p> <b>Work Experience</b></P></td>

</tr>

<tr>
<td colspan="2" rowspan="2">
    <h2><center><%=res.getString("fil3")%></center></h2>
</td>
</tr>
<tr></tr>
<tr>
    <td colspan="2" align="center"> <p><b>Education</b> </P></td>
</tr>
<tr>
    <td colspan="2"><img src="<%=res.getString("fil2")%>" width="600px" height="600px"></td>

</tr>


</table>
 
 
 
</div>
<br><br>

 
 </td>

</tr>


</table>

<table width="100%">

<tr>
<td>

</td>
</tr>
<%
}}catch(Exception ex){
    out.print(ex);}
%>
</center>

</table>
</center>
</body>

</html>