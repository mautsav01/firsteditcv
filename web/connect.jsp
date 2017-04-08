<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<%
    try{
        
    

    String fname=request.getParameter("fname");
     String lname=request.getParameter("lname");
        String email=request.getParameter("email");
        String tadd=request.getParameter("tadd");
        
        String phoneno=request.getParameter("phoneno");
     String faname=request.getParameter("faname");
     String mname=request.getParameter("mname");
  
        String gender=request.getParameter("gender");
        String mstatus=request.getParameter("mstatus");
        
           String bg=request.getParameter("bg");
  
        String padd=request.getParameter("paddress");
  String wbu=request.getParameter("comment");
 
  //out.print(request.getAttribute("name"));
    String msg=request.getParameter("msg");
    String fil3=request.getParameter("msg1");
  String wbu1=request.getParameter("comment1");
                    
   
    
 Class.forName("com.mysql.jdbc.Driver");
    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/saugat","root","");
        
        
    PreparedStatement pst=cn.prepareStatement("insert into saugat1 (fname,lname,email,tadd,phoneno,faname,mname,gender,mstatus,bg,paddress,wbt,fil1,fil2,fil3) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
    pst.setString(1,fname);
    pst.setString(2,lname);
    pst.setString(3,email);
    pst.setString(4,tadd);
    pst.setString(5,phoneno);
    pst.setString(6,faname);
    pst.setString(7,mname);
    pst.setString(8,gender);
    pst.setString(9,mstatus);
    pst.setString(10,bg);
    pst.setString(11,padd);
    pst.setString(12,wbu);
    pst.setString(13,msg );
    pst.setString(14,fil3 );
   pst.setString(15, wbu1);
int result=pst.executeUpdate(); 

if(result>0){
    response.sendRedirect("index.jsp?msg=Registered Successfully !");
}
else{
response.sendRedirect("index.jsp?msg=User not Registered !");
}}catch(Exception ex){
    out.print(ex);
}

   





%>