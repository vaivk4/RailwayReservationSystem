

<%-- 
   Document   : jbook_detail
   Created on : 29 Apr, 2020, 9:42:35 PM
   Author     : vaibhav
   --%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Railway ticket view</title>
      <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
      <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <!--      <link rel="stylesheet" type="text/css" href="style.css" />-->
      <!-- Compiled and miniaafied CSS -->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
      <!-- Compiled and minified JavaScript -->
      <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/css/materialize.min.css">
      <link rel="stylesheet" type="text/css" href="mystyle.css"/>
   </head>
   <body>
      <nav>
         <div class="nav-wrapper">
            <a href="#" class="brand-logo">Railway reservation system</a>
            <ul id="nav-mobile" class="right hide-on-med-and-down">
               <li><a href="homepage.html">Home</a></li>
               <li><a href="jbook.jsp">New Booking</a></li>
               <li><a href="jbook_cancel.jsp">Cancel Ticket</a></li>
               <li><a href="about.html">About</a></li>
            </ul>
         </div>
      </nav>
      <%
         HttpSession sessionnew = request.getSession(false); 
          String user= (String)sessionnew.getAttribute("uname");
          //String name= (String)sessionnew.getAttribute("name");
          out.print("Hello " + user);
          //String user = "vaiceg";
          %>
      <div class="book-detail-bodytext">
         <h4 style="margin-left: 33%;">Your Booking Details</h4>
      </div>
      <div class="booking-session">           
         <% Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/railway_res_sys","root","");
            String sql="select * from book_ticket where uname=?";
            PreparedStatement stmt=conn.prepareStatement(sql);
            stmt.setString(1,user);
            ResultSet rs=stmt.executeQuery();
            
            int s=0;
            
            
             //out.println("<table border=\"1\" cellpadding = \"5\" cellspacing = \"5\">");   
             out.println("<table >");
             out.println("<thead>");
             out.println("<tr>");
             out.println("<th>");
             out.println("<h4>Name</h4>");
             out.println("</th> ");
             out.println("<th>");
             out.println("<h4>Source</h4>");
             out.println("</th>");
             out.println("<th>");
             out.println("<h4>Destination</h4>");
             out.println("</th>");
             out.println("<th>");
             out.println("<h4>Train no</h4>");
             out.println("</th>");
             out.println("<th>");
             out.println("<h4>Train name.</h4>");
             out.println("</th>");
             out.println("<th>");
             out.println("<h4>Date</h4>");
             out.println("</th>");
             out.println("<th>");
             out.println("<h4>PNR</h4>");
             out.println("</th>");
             out.println("</tr>");
             out.println("</thead>");
             
             while(rs.next())
            {
                s=1;
             
             out.println("<tbody>");
             out.println("<tr>");
             out.println("<td>"+rs.getString(2)+"</td>");
             out.println("<td>"+rs.getString(3)+"</td>");
             out.println("<td>"+rs.getString(4)+"</td>");
             out.println("<td>"+rs.getString(5)+"</td>");
             out.println("<td>"+rs.getString(6)+"</td>");
             out.println("<td>"+rs.getString(8)+"</td>");
             out.println("<td>"+rs.getString(9)+"</td>");
             out.println("</br>");
             out.println("</tr>");
             
            } 
            if(s==0)
                out.println("No detail available");
            
            out.println("</tbody>");
            out.println("</table>");
            
            
            
            %>
      </div>
   </body>
</html>

