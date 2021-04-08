import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/count")
public class PageCountServlet extends HttpServlet {

    int pageCountViews = 0;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) {
        if (req.getParameter("reset") != null) {
            pageCountViews = 0;
        }
        pageCountViews += 1;
        System.out.println(pageCountViews);
    }

}
