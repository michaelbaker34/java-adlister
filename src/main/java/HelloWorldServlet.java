import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;

//@WebServlet(name = "HelloWorldServlet", urlPatterns = "/hello")
@WebServlet("/hello")
public class HelloWorldServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        String thingToGreet = req.getParameter("name");
        if (thingToGreet == null) {
            thingToGreet = "world";
        }
        String output = String.format("<h1>Hello, %s</h1>", thingToGreet);
        out.println(output);
    }

}
