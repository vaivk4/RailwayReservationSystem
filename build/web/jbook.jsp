

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<%-- 
   Document   : jbook
   Created on : 27 Apr, 2020, 3:41:25 PM
   Author     : vaibhav singh
   --%>
<!DOCTYPE html>
<html>
   <head>
      <title>railway</title>
      <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
      <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <link rel="stylesheet" type="text/css" href="style.css" />
      <!-- Compiled and minified CSS -->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
      <!-- Compiled and minified JavaScript -->
      <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/css/materialize.min.css">
   </head>
   <body>
      <nav>
         <div class="nav-wrapper">
            <a href="#" class="brand-logo">Railway reservation system</a>
            <ul id="nav-mobile" class="right hide-on-med-and-down">
               <li><a href="homepage.html">Home</a></li>
               <li><a href="about.html">About</a></li>
            </ul>
         </div>
      </nav>
      <div class="section"></div>
      <main>
         <center>
            <div class="section"></div>
            <div class="section"></div>
            <div class="container">
               <div class="z-depth-1 grey lighten-4 row" style="display: inline-block; padding: 32px 48px 0px 48px; border: 1px solid #EEE;">
                  <form class="col s12" action='' method="post">
                     <div class='row'>
                        <div class='col s12'>
                           <h5 class="indigo-text text-darken-2">Welcome to booking window</h5>
                           <h5 class="indigo-text text-darken-2">Fill the detail to proceed ahead</h5>
                           
                        </div>
                     </div>
                     <%  
                        String user= (String)session.getAttribute("uname");
                        String name= (String)session.getAttribute("name");
                        out.print("Hello " + user); %>
                     <div class='row'>
                        <div class='input-field col s12'>
                           <input class='validate' type="text" align="center" id="source" name="source" required/>
                           <label for='source'>Source</label>
                        </div>
                     </div>
                     <div class='row'>
                        <div class='input-field col s12'>
                           <input class='validate' type="text" align="center" id="destination" name="destination" required/>
                           <label for='destination'>Destination</label>
                        </div>
                     </div>
                     <div class='row'>
                        <div class='input-field col s12'>
                           <input class='validate' type="text" align="center" id="passenger" name="passenger" required/>
                           <label for='passenger'>No of Passenger</label>
                        </div>
                     </div>
                     <div class='row'>
                        <div class='input-field col s12'>
                           <input class='validate' type="date" align="center" id="date" name="date" required/>
                           <label for='date'>Date Of Journey</label>
                        </div>
                     </div>
                     <br />
                     <center>
                        <div class='row'>
                           <button type='submit' name='btn_login' value="submit" class='col s12 btn btn-large waves-effect indigo'>Book Ticket</button>
                        </div>
                     </center>
                  </form>

              
      <!--             
         <center>
             <div>
                 <form action='' method="post" class="form1">
                     <input type="text" align="center" class ="un" placeholder="Source" name="source" required>
                     <input type="text"align="center"  class ="un" placeholder="Destination" name="destination" required>
                     <input type="number"align="center"  class ="un" placeholder="No. of Passeneger" name="passenger" required>
                     <input type="date"align="center"  name="date" class ="un" placeholder="Date" required>
                     <br><input align="center" class ="submit"  type="submit" value="submit"><br>
                     
                 </form>
             </div>
         </center>-->
      <%@ page import="java.util.*"%>
      <%@ page import="java.sql.*"%>
      <%
         String src,des,nop,date;
             
             src=request.getParameter("source");
             des=request.getParameter("destination");
             nop=request.getParameter("passenger");
             date=request.getParameter("date");
             Class.forName("com.mysql.jdbc.Driver");
             Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/railway_res_sys","root","");
             String sql="select * from train where source=? and destination=?";
             PreparedStatement stm=conn.prepareStatement(sql);
             stm.setString(1,src);
             stm.setString(2,des);
             ResultSet rs=stm.executeQuery();
             
             String sql1="INSERT INTO book_ticket(`uname`, `name`, `src`, `des`, `tno`, `tname`,`no_passenger`,`date`) VALUES (?,?,?,?,?,?,?,?)";
                         
             
             int i=0;
             while(rs.next())
             {
               PreparedStatement stmt=conn.prepareStatement(sql1);
             stmt.setString(1,user);
             stmt.setString(2,name);
             stmt.setString(3,src);
             stmt.setString(4,des);
             stmt.setString(5,rs.getString(1));
             stmt.setString(6,rs.getString(2));
             stmt.setString(7,nop);
             stmt.setString(8,date);  
             
               stmt.executeUpdate();
                   
              i=1;
             } 
             if(i==1){
              
//              out.println("</br>");
//              out.println("<a href='jbook_detail.jsp'> => click to go to see booking history</a></br>");
//              out.println("<a href='jbook_cancel.jsp'> => click to cancel your ticket</a>");
              //out.println("<a href='jbook_detail.jsp'> => click to go previous page</a>");
              //out.println("<button onclick='jbook_detail.jsp'>View Ticket</button>");
              //out.println("<button onclick='jbook_cancel.jsp'>Cancel Ticket</button>");
              out.println("<div class='row'>");
              out.println("<div class='col s12'>");
              out.println("your ticket has been  booked");
              out.println("<br>");
              out.println("<a href=\"jbook_detail.jsp\">View Ticket</a>");
              out.println("<br>");
              out.println("<a href=\"jbook_cancel.jsp\">Cancel Ticket</a>");
//              out.println("</div>");
//              out.println("</div>");
             }
             else
                 out.println("No train available");
             
//             out.println("</table>");
         
         
         %>
      
               </div>
            </div>
          </div>
            </div>
         </center>
         <div class="section"></div>
         <div class="section"></div>
      </main><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.1/jquery.min.js"></script>
      <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/js/materialize.min.js"></script> 
   </body>
</html>

