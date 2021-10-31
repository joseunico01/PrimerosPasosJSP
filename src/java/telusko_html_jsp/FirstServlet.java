package telusko_html_jsp;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class FirstServlet extends HttpServlet {

   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
       throws ServletException, IOException {

/*   //Aca usamos para redireccionar, pero sigue manteniendose en el 1er servlet, pero podemos mandar alagun dato
      RequestDispatcher rd=request.getRequestDispatcher("SecondServlet");
      rd.forward(request, response);
*/

/*    //CREANDO SESIONES
      String str=request.getParameter("t1");
      HttpSession session=request.getSession();
      session.setAttribute("t1", str);
*/

/*            //COKKIES
      String str=request.getParameter("t1");
      Cookie cookie=new Cookie("t1",str);
      response.addCookie(cookie);
      
      //Aca lo usamos pero ya nos manda al 2do servlet-->Aca lo mandamos sin ningun parametro ni nada de ayuda
      response.sendRedirect("SecondServlet");
*/
      
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
