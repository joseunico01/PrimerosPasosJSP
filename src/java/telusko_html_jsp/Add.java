package telusko_html_jsp;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Add extends HttpServlet {
   public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException{
      int i=Integer.parseInt(req.getParameter("t1"));
      int j=Integer.parseInt(req.getParameter("t2"));

      int k=i+j;
      
      PrintWriter out=res.getWriter();
      out.print(k);
   }

}