

<%-- 
   Document   : jbook_cancel
   Created on : 30 Apr, 2020, 3:02:51 PM
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
      <title>Railway ticket cancelation </title>
      <link rel="stylesheet" type="text/css" href="mystyle.css"/>
      <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
      <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
               <li><a href="jbook.jsp">New Booking</a></li>
               <li><a href="jbook_detail.jsp">View Ticket</a></li>
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
      <% Class.forName("com.mysql.jdbc.Driver");
         Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/railway_res_sys","root","");          
         %>
      <main>
         <center>
            <div class="section"></div>
            <div class="section"></div>
            <div class="container">
               <div class="z-depth-1 grey lighten-4 row" style="display: inline-block; padding: 32px 48px 0px 48px; border: 1px solid #EEE;">
                  <form class="col s12" action='' method="post">
                     <div class='row'>
                        <div class='col s12'>
                           <h5 class="indigo-text text-darken-2">Please, Enter your PNR to cancel Ticket</h5>
                        </div>
                     </div>
                     <div class='row'>
                        <div class='input-field col s12'>
                           <input class='validate' type=text name=pnr id='pnr' />
                           <label for='pnr'>Enter PNR</label>
                        </div>
                     </div>
                     <br />
                     <center>
                        <div class='row'>
                           <button type=submit value='cancel' name='btn_login' class='col s12 btn btn-large waves-effect indigo'>Cancel ticket</button>
                        </div>
                     </center>
                  </form>
                  <%
                     String pnr=request.getParameter("pnr");
                      
                      String str2="delete from book_ticket where pnr=?";
                      PreparedStatement st=conn.prepareStatement(str2);
                      st.setString(1,pnr);
                      if(st.executeUpdate()==1){
                       out.println("\n\n\n<br>Your ticket is canceled");
                       out.println("\n<br>to check go to view ticket page");
                       
                      }
                     %>
               </div>
            </div>
         </center>
         <div class="section"></div>
         <div class="section"></div>
      </main>
      <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.1/jquery.min.js"></script>
      <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/js/materialize.min.js"></script>
   </body>
</html>

