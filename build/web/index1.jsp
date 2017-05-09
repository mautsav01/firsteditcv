

<%@page import="java.util.concurrent.TimeUnit"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
	<center>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Value insert</title>
               
        
        
        
        
    </head>
    <body>
        <div class="text">
        <form name="myform" method="post" action="connect.jsp"  onsubmit="return validateForm();">
            <div class="tags">
                <p>   Profile pic:</p><a href="filefront.jsp" target="_blank"> upload profile pic</a>
                <br><br>
             <%
          
    Object msg1=request.getAttribute("name");
  
    %>
    
      
  <p> filename2:</p>  <input type="text" value="<%=msg1%>" name="filename">
    <table>     
        <tr>
        
            <td>
            
    
          <p>  Firstname:</p><input type="text" placeholder="firstname" name="fname"><br>
            <br>
            </td><td>
         <p>   Lastname:</p><input type="text" placeholder="Lastname" name="lname"><br>
          <br></td><td>
            <p>Email:</p><input type="text" placeholder="email" name="email"><br>
          <br>
            </td><td>
         <p>   Temporary-Address:</p><input type="text" placeholder="Temporary address" name="tadd"><br>
<br>         </td><td> 
         <p>  Phone number:</p><input type="text" placeholder="Phone number" name="phone"><br>
    <br> 
    </td>
    </tr>
    </table>
                <table><tr><td>
         <p>  Your Work is based on:</p><input type="text" placeholder="eg:Doctor/Engineer" name="skillname"><br>
        
            </td></tr>
         
<br>
<table>
    <tr>
        <td>
            <p>   You have skill in:</p><center><input type="text" placeholder="eg:painting/java/photoshop" name="Skill1"></center>  </td><td> 
 <p>   Rate-Yourself(in %):</p><input type="number" min="0" max="100" placeholder="eg:30%/90%" name="rate1"><br>
</td>
    </tr>
    <tr>
        <td>
            <p>   You have skill in:</p><center><input type="text" placeholder="eg:painting/java/photoshop" name="Skill2"></center>  </td><td> 
 <p>   Rate-Yourself(in %):</p><input type="number" min="0" max="100" placeholder="eg:30%/90%" name="rate2"><br>
</td>
    </tr>
    <tr>
        <td>
            <p>   You have skill in:</p><center><input type="text" placeholder="eg:painting/java/photoshop" name="Skill3"></center>  </td><td> 
 <p>   Rate-Yourself(in %):</p><input type="number" min="0" max="100" placeholder="eg:30%/90%" name="rate3"><br>
</td>
    </tr>
    <tr>
        <td>
            <p>   You have skill in:</p><center><input type="text" placeholder="eg:painting/java/photoshop" name="Skill4"></center>  </td><td> 
 <p>Rate-Yourself(in %):</p><input type="number" min="0" max="100" placeholder="eg:30%/90%" name="rate4"><br>
</td>
    </tr>
     

</table>
<hr><hr>

<table>
    <tr>
        <td>
            <p>  Language:</p><center><input type="text" placeholder="eg:English/japanese" name="lang1"></center>  </td><td> 
 <p>   Rate-Yourself(in %):</p><input type="number" min="0" max="100" placeholder="eg:30%/90%" name="rate11"><br>
</td>
    </tr>
    <tr>
        <td>
            <p>   Language :</p><center><input type="text" placeholder="eg:painting/java/photoshop" name="lang2"></center>  </td><td> 
 <p>   Rate-Yourself(in %):</p><input type="number" min="0" max="100" placeholder="eg:30%/90%" name="rate12"><br>
</td>
    </tr>
    <tr>
        <td>
            <p>   Language:</p><center><input type="text" placeholder="eg:painting/java/photoshop" name="lang3"></center>  </td><td> 
 <p>   Rate-Yourself(in %):</p><input type="number" min="0" max="100" placeholder="eg:30%/90%" name="rate13"><br>
</td>
    </tr>
     

</table>

<table>
    <tr>
        <td>
            <p>  Work experience:</p><center><input type="text" placeholder="eg:Java Developer" name="we1"></center>  </td>
<td> 
 <p>   From:</p><input type="Date"  name="fdate1"><br>
</td>
<td><p>   To:</p><input type="Date"  name="tdate1"><br>
</td>
    </tr>
     <tr>
        <td>
            <p>  Work experience:</p><center><input type="text" placeholder="eg:Java Developer" name="we2"></center>  </td>
<td> 
 <p>   From:</p><input type="Date"  name="fdate2"><br>
</td>
<td><p>   To:</p><input type="Date"  name="tdate2"><br>
</td>

    </tr>  <tr>
        <td>
            <p>  Work experience:</p><center><input type="text" placeholder="eg:Java Developer" name="we3"></center>  </td>
<td> 
 <p>   From:</p><input type="Date"  name="fdate3"><br>
</td>
<td><p>   To:</p><input type="Date"  name="tdate3"><br>
</td>

    </tr>

</table>


<table>
    <tr>
        <td>
            <p>  Education:</p><center><input type="text" placeholder="eg:master's level" name="e1"></center>  </td>
<td> 
 <p>   From:</p><input type="Date"  name="rate31"><br>
</td>
<td><p>   To:</p><input type="Date"  name="rate32"><br>
</td>
    </tr>
     <tr>
        <td>
            <p>  Education:</p><center><input type="text" placeholder="eg:Java Developer" name="e2"></center>  </td>
<td> 
 <p>   From:</p><input type="Date"  name="rate33"><br>
</td>
<td><p>   To:</p><input type="Date"  name="rate34"><br>
</td>

    </tr>  <tr>
        <td>
            <p>  Education:</p><center><input type="text" placeholder="eg:Java Developer" name="e3"></center>  </td>
<td> 
 <p>   From:</p><input type="Date"  name="rate35"><br>
</td>
<td><p>   To:</p><input type="Date"  name="rate36"><br>
</td>

    </tr>

</table>














     <input type="submit" value="register">
        <style>
body {
    background-image: url("light.jpg");
    background-color: #cccccc;
	height:100%;
	width:100%;
}

 .tags  a
{
	text-decoration:none;
	font-family: Algerian;
	background-color:orange; 
	border-radius:40px; 
	height:400px; 
	width:500px; 
	margin-top:5px;
	padding-top: 10px;
	padding-bottom:10px;
	text-align: center;
	font-size: 15px;
	color: white;
}
.tags  a:hover
{
	background-color:#b266ff; 
	border-radius:25px; 
	background-color:red;
}





input[type=submit] {
    width: 20%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 5px solid red;
    border-radius: 4px;
	border-radius:40px; 
}

input[type=text] {
    width: 100%;
    
   
    box-sizing: border-box;
    border: 5px solid orange;
    border-radius: 4px;

}

input[type=number] {
    width: 100%;
   
    margin: 8px 0;
    box-sizing: border-box;
    border: 5px solid orange;
    border-radius: 4px;
}
    p{
        color: purple;
        font-size: 20px;
        
    }







</style>
    
            
        </form>
    
        <script>
function validateForm() {
   
   
    var  ph= document.forms["myform"]["phoneno"].value;
    var tadd = document.forms["myform"]["tadd"].value;
   
   
    var fname = document.forms["myform"]["fname"].value;
    var lname = document.forms["myform"]["lname"].value;
    
    
    if(fname==="" && lname==="" && tadd===""){
        alert("empty field is not valid");
       return false; 
    }
   
    var x = document.forms["myform"]["email"].value;
    var atpos = x.indexOf("@");
    var dotpos = x.lastIndexOf(".");
    if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
        alert("Not a valid e-mail address");
        return false;
    }
   
}
</script>
        
        </div>
    </body>
    </center>

</html>