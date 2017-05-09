<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<%
    
        try{
    
String fil1=request.getParameter("filename");
        
    String fname=request.getParameter("fname");
     String lname=request.getParameter("lname");
        String email=request.getParameter("email");
        String tadd=request.getParameter("tadd");
        
        String phoneno=request.getParameter("phone");
     //String fil1=request.getParameter("filename");
        
        
     String skillname=request.getParameter("skillname");
   
     String skill1=request.getParameter("skill1");
     String rate1=request.getParameter("rate1");
     
     
     
     String skill2=request.getParameter("skill2");
     String rate2=request.getParameter("rate2");
     
  
     String skill3=request.getParameter("skill3");
     String rate3=request.getParameter("rate3");
     
  
     String skill4=request.getParameter("skill4");
     String rate4=request.getParameter("rate4");
     
  //////////////////////////////////////////////////////////////////////
     
     String lang1=request.getParameter("lang1");
     String rate11=request.getParameter("rate11");
     
     
     
     String lang2=request.getParameter("lang2");
     String rate12=request.getParameter("rate12");
     
  
     String lang3=request.getParameter("lang3");
     String rate13=request.getParameter("rate13");
     
  
   /////////////////////////////////////////////////////////////////////////
     String we1=request.getParameter("we1");
     String fdate1=request.getParameter("fdate1");
     String tdate1=request.getParameter("tdate1");
     
     String we2=request.getParameter("we2");
     String fdate2=request.getParameter("fdate2");
     String tdate2=request.getParameter("tdate2");
     
  
     String we3=request.getParameter("we3");
     String fdate3=request.getParameter("fdate3");
     String tdate3=request.getParameter("tdate3");
     
     
   //////////////////////////////////////////////////////////////////////////
     
     String e1=request.getParameter("e1");
     String rate31=request.getParameter("rate31");
     String rate32=request.getParameter("rate32");
     
     String e2=request.getParameter("e2");
     String rate33=request.getParameter("rate33");
     String rate34=request.getParameter("rate34");
     
  
     String e3=request.getParameter("e3");
     String rate35=request.getParameter("rate35");
     String rate36=request.getParameter("rate36");
 //    String fil1=request.getParameter("filename");
     
     JOptionPane.showConfirmDialog(null, skill1);
     JOptionPane.showConfirmDialog(null, skill2);
     JOptionPane.showConfirmDialog(null, skill3);
     JOptionPane.showConfirmDialog(null, skill4);
     
     
                    
   
    
 Class.forName("com.mysql.jdbc.Driver");
    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/saugat","root","");
        
     
    
    PreparedStatement pst=cn.prepareStatement("insert into alll (email,firstname,lastname,address,phone,filename, ed1,start11,end11,ed2,start22,end22,ed3,start33,end33, lan1,rate11,lan2,rate22,lan3,rate33, skillname,skill1,rate1,skill2,rate2,skill3,rate3,skill4,rate4,we1,start1,end1,we2,start2,end2,we3,start3,end3) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
    pst.setString(1,email);
    pst.setString(2,fname);
    pst.setString(3,lname);
    pst.setString(4,tadd);
    pst.setString(5,phoneno);
    pst.setString(6,fil1);  
    
      pst.setString(7,e1);
    pst.setString(8,rate31);
    pst.setString(9,rate32);
    pst.setString(10,e2);
    
    pst.setString(11,rate33);
    pst.setString(12,rate34);
    pst.setString(13,e3);
    
    pst.setString(14,rate35);
  pst.setString(15,rate36);
  
    pst.setString(16,lang1);
    pst.setString(17,rate11);
    pst.setString(18,lang2);
    pst.setString(19,rate12);
    pst.setString(20,lang3);
    pst.setString(21,rate13);
   
   
   // PreparedStatement pst1=cn.prepareStatement("insert into skills (skillname,skill1,rate1,skill2,rate2,skill3,rate3,skill4,rate4) values(?,?,?,?,?,?,?,?,?)");
    pst.setString(22,skillname);
    pst.setString(23,skill1);
    pst.setString(24,rate1);
    pst.setString(25,skill2);
    pst.setString(26,rate2);
    pst.setString(27,skill3);
    pst.setString(28,rate3);
    pst.setString(29,skill4);
    pst.setString(30,rate4);
    
    
    

  
  
    
    
    pst.setString(31,we1);
    pst.setString(32,fdate1);
    pst.setString(33,tdate1);
    pst.setString(34,we2);
    pst.setString(35,fdate2);
    pst.setString(36,tdate2);
    pst.setString(37,we3);
    pst.setString(38,fdate3);
    pst.setString(39,tdate3);
    
    int result4=pst.executeUpdate(); 
   
   
    
    
    



if(result4>0){
response.sendRedirect("index.jsp?msg=successful");
   
}
else{
response.sendRedirect("index.jsp?msg=User not Registered !");
}}catch(Exception ex){
    out.print(ex);
}

   





%>