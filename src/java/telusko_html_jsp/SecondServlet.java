package telusko_html_jsp;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SecondServlet extends HttpServlet {

   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
       throws ServletException, IOException {
   
      /*SESSIONES
      HttpSession session=request.getSession();
      String str=session.getAttribute("t1").toString();//Obtener el valor t volverlo string
      
      PrintWriter out=response.getWriter();
      out.print("Welcome "+str);

      */

/*    //COOKIES
      Cookie cookies[]= request.getCookies();
      String str=null;
      
      for(Cookie c:cookies){
         if(c.getName().equals("t1"))
         {
            str=c.getValue();
         }
      }
      
      PrintWriter out=response.getWriter();
      out.print("Welcome " +str);
*/

      String str= request.getParameter("t1");

      PrintWriter out=response.getWriter();
      out.print("Welcome " +str);
      
    }
   // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
   /**
    * Handles the HTTP <code>GET</code> method.
    *
    * @param request servlet request
    * @param response servlet response
    * @throws ServletException if a servlet-specific error occurs
    * @throws IOException if an I/O error occurs
    */
   @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
       throws ServletException, IOException {
      processRequest(request, response);
   }

   /**
    * Handles the HTTP <code>POST</code> method.
    *
    * @param request servlet request
    * @param response servlet response
    * @throws ServletException if a servlet-specific error occurs
    * @throws IOException if an I/O error occurs
    */
   @Override
   protected void doPost(HttpServletRequest request, HttpServletResponse response)
       throws ServletException, IOException {
      processRequest(request, response);
   }

   /**
    * Returns a short description of the servlet.
    *
    * @return a String containing servlet description
    */
   @Override
   public String getServletInfo() {
      return "Short description";
   }// </editor-fold>

}



