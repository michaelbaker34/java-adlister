import contact.Contact;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.*;

@WebServlet("/contacts")
public class ViewContactsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        List<Contact> contacts = new ArrayList<>(Arrays.asList(
                new Contact(1, "Fred Smith", "fred@email.com", "1122 Fred Way", "5554442222", true),
                new Contact(2, "Sally Smith", "sally@email.com", "1122 Sally Way", "5554442222", true),
                new Contact(3, "Cathy Smith", "cathy@email.com", "1122 Cathy Way", "5554441111", true),
                new Contact(4, "Bob Smith", "bob@email.com", "1122 Bob Way", "5554446666", false)
        ));
        req.setAttribute("contacts", contacts);
        req.getRequestDispatcher("contacts.jsp").forward(req, res);

        // M ????
        // Controller - server controller what to do once it receives an HTTP request.
        // View - how the data will be presented to the client/user/browser
    }
}
