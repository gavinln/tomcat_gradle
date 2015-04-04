import java.io.IOException;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.net.InetAddress;
import java.net.UnknownHostException;

public class Hello extends HttpServlet implements Servlet {

    public Hello() {}

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String pageTitle = "My Page Title";
        String machine = "unknown";

        request.setAttribute("title", pageTitle);

        try
        {
            InetAddress addr;
            addr = InetAddress.getLocalHost();
            machine = addr.getHostName();
        }
        catch (UnknownHostException ex)
        {
            System.out.println("Hostname can not be resolved");
        }

        request.setAttribute("machine", machine);
        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }
}
