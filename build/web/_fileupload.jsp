<%@page import="org.apache.commons.io.FilenameUtils"%>

   
<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%
String path="C:\\Users\\USER\\Documents\\NetBeansProjects\\cvfinal\\web\\";
try{
MultipartRequest mrequest=new MultipartRequest(request, path, 500000000, new DefaultFileRenamePolicy());
Enumeration filenames=mrequest.getFileNames();
String fileName=mrequest.getFilesystemName(filenames.nextElement().toString());
  String fileType=FilenameUtils.getExtension(new File(path+"\\"+fileName).toString());
    
  request.setAttribute("name",fileName);

    RequestDispatcher dispatcher = request.getRequestDispatcher("index1.jsp");
    if (dispatcher != null){
            dispatcher.forward(request, response);
    } 
  
  
  
}catch(Exception ex){
    out.print(ex);
    
   }
%>
<html>
   
    <h1> file upload successful</h1>
    <a href="filefront.jsp">click here for more</a>
</html>
    
   
            
    
        
