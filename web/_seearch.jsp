
   
  <%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>


<html>
<title>Output look</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html,body,h1,h2,h3,h4,h5,h6 {font-family: "Roboto", sans-serif}
</style>
<body class="w3-light-grey">

<!-- Page Container -->
<div class="w3-content w3-margin-top" style="max-width:1400px;">

  <!-- The Grid -->
  <div class="w3-row-padding">
  
    <!-- Left Column -->
    <div class="w3-third">
    



<%
   
Connection con=null;
Statement stmt=null;
try{
Class.forName("com.mysql.jdbc.Driver");
 Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/saugat","root","");
        stmt=cn.createStatement();
String s2=request.getParameter("email");

ResultSet res=stmt.executeQuery("select * from alll where email='"+s2+"'");
while(res.next())
{
%>

  <div class="w3-white w3-text-grey w3-card-4">
        <div class="w3-display-container">
         <td colspan="2"><img src="<%=res.getString("filename")%>" width="300px" height="200px">
	
             <div class="w3-display-bottomleft w3-container w3-text-black">
            <h2> <%=res.getString("firstname")%>&nbsp;&nbsp;<%=res.getString("lastname")%></h2>
          </div>
        </div>
        <div class="w3-container">
          <p><i class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal"></i><%=res.getString("skillname")%></p>
          <p><i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"></i><%=res.getString("address")%></p>
          <p><i class="fa fa-envelope fa-fw w3-margin-right w3-large w3-text-teal"></i><%=res.getString("email")%></p>
          <p><i class="fa fa-phone fa-fw w3-margin-right w3-large w3-text-teal"></i><%=res.getString("phone")%></p>
          <hr>


          <p class="w3-large"><b><i class="fa fa-asterisk fa-fw w3-margin-right w3-text-teal"></i>Skill</b></p>
          <p><%=res.getString("skill1")%></p>
          <div class="w3-light-grey w3-round-xlarge w3-small">
		  
		  <!-- COMMENT HERE FOR MARKS PERCENTAGE !-->
            <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:<%=res.getString("rate1")%>"><%=res.getString("rate1")%></div>
          </div>
          <p><%=res.getString("skill2")%></p>
          <div class="w3-light-grey w3-round-xlarge w3-small">
            <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:<%=res.getString("rate2")%>">
              <div class="w3-center w3-text-white"><%=res.getString("rate2")%></div>
            </div>
          </div>
          <p><%=res.getString("skill3")%></p>
          <div class="w3-light-grey w3-round-xlarge w3-small">
            <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:<%=res.getString("rate3")%>"><%=res.getString("rate3")%></div>
          </div>
          <p><%=res.getString("skill4")%></p>
          <div class="w3-light-grey w3-round-xlarge w3-small">
            <div class="w3-container w3-center w3-round-xlarge w3-teal" style="width:<%=res.getString("rate4")%>"><%=res.getString("rate4")%></div>
          </div>

          <p class="w3-large w3-text-theme"><b><i class="fa fa-globe fa-fw w3-margin-right w3-text-teal"></i>Languages</b></p>
          <p><%=res.getString("lan1")%></p>
          <div class="w3-light-grey w3-round-xlarge">
            <div class="w3-round-xlarge w3-teal" style="height:24px;width:<%=res.getString("rate11")%>"></div>
          </div>
          <p><%=res.getString("lan2")%></p>
          <div class="w3-light-grey w3-round-xlarge">
            <div class="w3-round-xlarge w3-teal" style="height:24px;width:<%=res.getString("rate22")%>"></div>
          </div>
          <p><%=res.getString("lan3")%></p>
          <div class="w3-light-grey w3-round-xlarge">
            <div class="w3-round-xlarge w3-teal" style="height:24px;width:<%=res.getString("rate33")%>"></div>
          </div>
          <br>
        </div>
      </div><br>

    <!-- End Left Column -->
    </div>

    <!-- Right Column -->
    <div class="w3-twothird">

        
      <div class="w3-container w3-card-2 w3-white w3-margin-bottom">
        <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-suitcase fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Work Experience</h2>
        <div class="w3-container">
          <h5 class="w3-opacity"><b><%=res.getString("we1")%></b></h5>
          <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i><%=res.getString("start1")%> <span class="w3-tag w3-teal w3-round"><%=res.getString("end1")%></span></h6>
          <p><hr>
        </div>
        <div class="w3-container">
          <h5 class="w3-opacity"><b><%=res.getString("we2")%></b></h5>
          <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i><%=res.getString("start2")%><span class="w3-tag w3-teal w3-round"><%=res.getString("end2")%></span></h6>
          <p><hr>
        </div>
        <div class="w3-container">
          <h5 class="w3-opacity"><b><%=res.getString("we3")%></b></h5>
          <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i><%=res.getString("start3")%><span class="w3-tag w3-teal w3-round"><%=res.getString("end3")%></span></h6>
          <p> </p><br>
        </div>
      </div>

      <div class="w3-container w3-card-2 w3-white">
        <h2 class="w3-text-grey w3-padding-16"><i class="fa fa-certificate fa-fw w3-margin-right w3-xxlarge w3-text-teal"></i>Education</h2>
        <div class="w3-container">
          <h5 class="w3-opacity"><b><%=res.getString("ed1")%></b></h5>
          <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i><%=res.getString("start11")%><span class="w3-tag w3-teal w3-round"><%=res.getString("end11")%></span></h6>
          <p></p>
          <hr>
        </div>
        <div class="w3-container">
          <h5 class="w3-opacity"><b><%=res.getString("ed2")%></b></h5>
          <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i><%=res.getString("start22")%><span class="w3-tag w3-teal w3-round"><%=res.getString("end22")%></span></h6>
          <p></p>
          <hr>
        </div>
        <div class="w3-container">
          <h5 class="w3-opacity"><b><%=res.getString("ed3")%></b></h5>
          <h6 class="w3-text-teal"><i class="fa fa-calendar fa-fw w3-margin-right"></i><%=res.getString("start33")%><span class="w3-tag w3-teal w3-round"><%=res.getString("end33")%></span></h6>
          <p></p><br>
        </div>
      </div>
<%}}catch(Exception ex){
    JOptionPane.showConfirmDialog(null, ex);
}
%>
    <!-- End Right Column -->
    </div>
    
  <!-- End Grid -->
  </div>
  
  <!-- End Page Container -->
</div>

<footer class="w3-container w3-teal w3-center w3-margin-top">
  <p>Find me on social media.</p>
  <a href="https://www.facebook.com/"><i class="fa fa-facebook-official w3-hover-opacity"> </a></i>
  <i class="fa fa-instagram w3-hover-opacity"></i>
  <i class="fa fa-snapchat w3-hover-opacity"></i>
  <i class="fa fa-pinterest-p w3-hover-opacity"></i>
  <i class="fa fa-twitter w3-hover-opacity"></i>
  <i class="fa fa-linkedin w3-hover-opacity"></i>
  </footer>

</body>

</html>






