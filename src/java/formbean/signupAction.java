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
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author vaibhav
 */
public class signupAction extends org.apache.struts.action.Action {

    private static final String SUCCESS = "success";
    
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
            out.println("<title>signup confirmation</title>"); 
            out.println("<link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.3.1/css/all.css\"\n" +
"         crossorigin=\"anonymous\">");
            out.println("<link href=\"https://fonts.googleapis.com/css?family=Roboto:300,400\" rel=\"stylesheet\">");
            out.println("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css\">");
            out.println("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js\"></script>");
            out.println("<link href=\"https://fonts.googleapis.com/icon?family=Material+Icons\" rel=\"stylesheet\">");
            out.println("<link rel=\"stylesheet\" type=\"text/css\" href=\"https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.5/css/materialize.min.css\">");
            out.println("<link href=\"mystyle.css\" rel=\"stylesheet\" type=\"text/css\">");
//            out.println("<div  align='right'");
//           out.println("<button onclick=\"window.location.href='homepage.html'\" class=\"button-desgin\" style=\"background-color:#7d31d4;\">Home</button>");
//           
//           
//            out.println("</div>");
            out.println("</head>");
            out.println("<body>");
            out.println("<div class=\"signup-body\">");
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
            
            
            
            //out.println("<h1 style=\"text-align: center;\">Railway Reservation System</h1>");
            
            
            String name,age,gender,mobno,email,address,username,passward;
            
            name=request.getParameter("name");
            age=request.getParameter("age");
            gender=request.getParameter("gender");
            mobno=request.getParameter("mobno");
            email=request.getParameter("email");
            address=request.getParameter("address");
            username=request.getParameter("username");
            passward=request.getParameter("passward");
           
            
             
            //out.println(name+age+mobno+gender+passward);
            
            try{
                       
             Class.forName("com.mysql.jdbc.Driver");
             Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/railway_res_sys","root","");
            // String sql="insert into login('uname','pass','name',age,'gender','mob_no','email','address') value(?,?,?,?,?,?,?)";
              String sql="INSERT INTO login(`uname`, `pass`, `name`, `age`, `gender`, `mob_no`,`email`,`address`) VALUES (?,?,?,?,?,?,?,?)";
             PreparedStatement stmt=conn.prepareStatement(sql);
             stmt.setString(1,username);
             stmt.setString(2,passward);
             stmt.setString(3,name);
             stmt.setInt(4,Integer.valueOf(age));
             stmt.setString(5,gender);
             stmt.setString(6,mobno);
             stmt.setString(7,email);
             stmt.setString(8,address);
             
             
             int i=stmt.executeUpdate();
             if(i==1)
             {
                 out.println("<p style=\"text-align: center;text-align: center;\n" +
"margin-top: 10%;\n" +
"font-size: 56px;\n" +
"font-weight: bold;\">");
                 out.println("thanks for registration");
                 out.println("</p>");
                 out.println("<br>");
                 out.println("<button onclick=\"window.location.href='jlogin.html'\" style=\"background-color:##c899ff;margin-left: 36%;\n" +
"margin-top: 4%;\n" +
"font-size: 56px;\" >Click to login</button>");
                 return mapping.findForward("homepage");
                 
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
