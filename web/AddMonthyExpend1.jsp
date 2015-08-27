<%-- 
    Document   : AddMonthyExpend1
    Created on : Aug 27, 2015, 4:17:36 PM
    Author     : Tharindu
--%>


<%@page import="javax.swing.JOptionPane"%>
<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        
    </head>
    <body>
         <%@include file="DB_Connector.jsp"%>
       
    <%
           
       
    
         
          String bname=request.getParameter("stat");
         
          String cbill=request.getParameter("cbill");
          String wbill=request.getParameter("wbill");
          String esal=request.getParameter("esal");
          String tax=request.getParameter("tax");
         String tbill=request.getParameter("tbill");
         String vmain=request.getParameter("vmain");
         String dam=request.getParameter("dam");
         
         //Increament ID    
      Statement stmt1 =conn.createStatement();
      int id=0;
      String BrandI="ME";
      try{
      stmt1 = conn.createStatement();
      String sql = "SELECT * FROM monthlyxpenditure ORDER BY MexpendId DESC LIMIT 1";
      ResultSet rs=stmt1.executeQuery(sql);
      
  
         while(rs.next())
            {    
                BrandI=rs.getString("MexpendId");
            }
         rs.close();
         }      
      catch(SQLException se)
      {      
            se.printStackTrace();
      } 
     id=Integer.parseInt(BrandI.substring(2));
     id=id+1;
     String expID="BB"+id;
      //End Of Increament Id
            
         
         try
          { 
             Statement stat=conn.createStatement();
             
         
             String sql="INSERT INTO `gajanayake`.`monthlyexpenditures` (`MexpendId`, `Month`, `Stationary`, `Currentbill`, `Waterbill`, `Employeesalaries`, `Income`, `Telephone`, `Damages`, `VehicleMaintains`) VALUES ('"+expID+"', 'May', '200', '3000', '1000', '75000', '1000', '2000', '5000', '25000')";
             stat.executeUpdate(sql);
              session.setAttribute("noti","yes");
            response.sendRedirect("mExpenditures.jsp");
            
             
             
             
        
             
          }
          catch(Exception e)
          {
             e.printStackTrace();
          }
  
        %>
    </body>
</html>

