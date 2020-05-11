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
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author vavibhav singh
 */
public class SearchAction extends org.apache.struts.action.Action {

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
        
         try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            
            out.println("<title>Servlet search_result</title>"); 
            out.println("<div  align='right'");
           out.println("<button onclick=\"window.location.href='homepage.html'\">Home</button>");
          // out.println("<input type=\"button\" onclick=\"location.href='http://google.com';\" value=\"Go to Google\" />"); 
            out.println("</div>");
             out.println("<link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\"/> "); 
            out.println("</head>");
            out.println("<body>");
             //out.println("<div  align="left" id="d4">   <h1>   Railway reservation system </h1></div>");
             
             
             
             
//           out.println(" <style>");
//           out.println(".td {");
//           out.println("color: #DC143C;");
//           out.println(" font-family: 'Ubuntu', sans-serif;");
//           out.println("font-weight: bold;");
//            out.println("vertical-align: top;");
//             out.println("text-align: left;");
//              out.println("}");
           
            out.println("<h1 style=color:#DC143C;>Railway Reservation system </h1>");
            String src=request.getParameter("source");
            String dest=request.getParameter("destination");
            
             //out.println("<h4>"+src+"</h4><br>");
             //out.println("<h4>"+dest+"</h4>");
             
             out.println("<table>");
             out.println("<tr><td><h4 style=color:#DC143C;>Train no</h4></td><td><h4 style=color:#DC143C;>Train name</h4></td><td><h4 style=color:#DC143C;>Source</h4></td><td><h4 style=color:#DC143C;>Destination</h4></td></tr>");
            
             try{
                       
             Class.forName("com.mysql.jdbc.Driver");
             Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/railway_res_sys","root","");
             String sql="select * from train where source=? and destination=?";
             PreparedStatement stmt=conn.prepareStatement(sql);
             stmt.setString(1,src);
             stmt.setString(2,dest);
             ResultSet rs=stmt.executeQuery();
             
             int i=0; 
            
             while(rs.next())
             {
              out.println("<tr>");
              out.println("<td style=color:#DC143C;>"+rs.getString(1)+"</td>");
              out.println("<td style=color:#DC143C;>"+rs.getString(2)+"</td>");
              out.println("<td style=color:#DC143C;>"+rs.getString(3)+"</td>");
              out.println("<td style=color:#DC143C;>"+rs.getString(4)+"</td>");
              out.println("</tr>");
              i=1;
              
             } 
             if(i==1)
                 //out.println("No train available");
             
             out.println("</table>");
             
             
            
            
             }
             catch(Exception e)
             {
               out.println(e);   
             }
             
            out.println("</body>");
            out.println("</html>");
        }
 
        
        return mapping.findForward(SUCCESS);
    }
}
