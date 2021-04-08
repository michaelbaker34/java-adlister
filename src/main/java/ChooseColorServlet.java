import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/choose-color")
public class ChooseColorServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
        PrintWriter out = res.getWriter();
        res.setContentType("text/html");
        String output = "";
        output += "<form action='view-color' method='POST'>";
        output += "<input name='color' placeholder='Enter color'>";
        output += "<button>Submit</button>";
        output += "</form>";
        out.println(output);

        String color = req.getParameter("choice");
        if (color != null) {
            String redirectString = String.format("/view-color?choice=%s", color);
            res.sendRedirect(redirectString);
        }
    }


}
