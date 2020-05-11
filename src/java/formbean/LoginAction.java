/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package formbean;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author vaibhav
 */
public class LoginAction extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String SUCCESS = "success";

    /**
     * This is the action called from the Struts framework.
     *
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>railway login</title>"); 
            
            out.println("<link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\"/> "); 
           
            out.println("<link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.3.1/css/all.css\"\n" +
"         crossorigin=\"anonymous\">");
            out.println("<link href=\"https://fonts.googleapis.com/css?family=Roboto:300,400\" rel=\"stylesheet\">");
            out.println("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css\">");
            out.println("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js\"></script>");
            out.println("<link href=\"https://fonts.googleapis.com/icon?family=Material+Icons\" rel=\"stylesheet\">");
            out.println("<link rel=\"stylesheet\" type=\"text/css\" href=\"https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/css/materialize.min.css\">");
            
            
            
            
//            out.println("<div  align='right'");
//            out.println("<button onclick=\"window.location.href='homepage.html'\" style= \"color: #fff;\" >Home</button>");
//            out.println("<button onclick=\"window.location.href='about.html'\">About</button>");
//           
//            out.println("</div>");
            out.println("</head>");
            out.println("<body>");
            
            out.println("<nav>");
            out.println("<div class=\"nav-wrapper\">");
            out.println("<a href=\"#\" class=\"brand-logo\">Railway reservation system</a>");
            out.println("<ul id=\"nav-mobile\" class=\"right hide-on-med-and-down\">");
            out.println("<li><a href=\"homepage.html\">Home</a></li>");
//            out.println("<li><a href="jlogin.html">Login</a></li>");
//            out.println("<li><a href="jsignup.html">Signup</a></li>");
            out.println("<li><a href=\"about.html\">About</a></li>");
            out.println("</ul>");
            out.println("</div>");
            out.println("</nav>");
            
            
            out.println("<div class='login-servlet-body'>");
            //out.println("<h1 style=color:#DC143C;>Railway Reservation System</h1>");
            
            String user=request.getParameter("username");
            String pass=request.getParameter("passward");
            
            
            
             try{
                       
             Class.forName("com.mysql.jdbc.Driver");
             Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/railway_res_sys","root","");
             String sql="select * from login where uname=? and pass=?";
             PreparedStatement stmt=conn.prepareStatement(sql);
             stmt.setString(1,user);
             stmt.setString(2,pass);
             ResultSet rs=stmt.executeQuery();
             
             
             if(rs.next()){
           
            out.println("<p style=\"color:#fff;margin-left: 8%;margin-top: 2%;font-size: x-large;\">you are logged in Sussessfully</p>");
                 
            out.println("<div class=\"homepage-box\">");
            out.println("<div class=\"main\">");
            
            out.println("<p class=\"sign\" align=\"center\">Select Options to proceed ahead...</p>");
            out.println("<div class=\"form1\">");
            out.println("<div class=\"homepage-button\">");
            out.println("<p>");
            out.println("<a href=\"jbook.jsp\"><input  align=\"center\" class =\"submit\" type=\"button\" value=\"Book Ticket\" style=\"width: 51%;\"/></a>");
            out.println("</p>");
//            out.println("<p>");
//            out.println("<a href=\"jsearch.html\"><input  align=\"center\" class =\"submit\" type=\"button\" value=\"Search Train\" style="width: 51%;" /></a>");
//            out.println("</p>");
            out.println("<p>");
            out.println("<a href=\"jbook_detail.jsp\"><input  align=\"center\" class =\"submit\" type=\"button\" value=\"View Ticket\" style=\"width: 51%;\"/></a>");
            out.println("</p>");
            out.println("<p>");
            out.println("<a href=\"jbook_cancel.jsp\"><input  align=\"center\" class =\"submit\" type=\"button\" value=\"Cancel Ticket\" style=\"width: 51%;\"/></a>");
            out.println("</p>");
            out.println("</div>");
            out.println("</div>");
            out.println("</div>");
            out.println("</div>");     
                 
//            out.println("<p style=color:#DC143C;>");
//            out.println("you are logged Sussessfully");
//            out.println("</p>");
//            out.println("<h4 style=color:#DC143C; >Please click on option to proceed ahead</h4>");
//            
//            out.println("<br><br><br>");
//            out.println("<button onclick=\"window.location.href='jbook.jsp'\" class:submit style=\"margin-left: 25%;\">book ticket</button>");
//            out.println("<button onclick=\"window.location.href='jbook_detail.jsp'\" style=\"margin-left: 8%;\">view ticket</button>");
//            
//            out.println("<button onclick=\"window.location.href='jbook_cancel.jsp'\" style=\"margin-left: 1%;\">cancel ticket</button>");
//            
//             
             
             HttpSession session = request.getSession();
              session.setAttribute("uname",rs.getString(1));
              session.setAttribute("name",rs.getString(3));
             }
             
             }
              catch(Exception e)
             {
               out.println(e);   
             }
            
            out.println("</div>");
            out.println("</body>");
            out.println("</html>");
        }
    
        
        return mapping.findForward(SUCCESS);
    }
}
