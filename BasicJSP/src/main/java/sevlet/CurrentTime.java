package sevlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CurrentTime
 */
@WebServlet("/curtime")
public class CurrentTime extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CurrentTime() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");	//응답을 내려보낼 때 내용 타입을 브라우저에 알려줌 
		response.setCharacterEncoding("utf-8");
		//처리 
		Calendar c = Calendar.getInstance();
		int hour = c.get(Calendar.HOUR_OF_DAY);
		int min = c.get(Calendar.MINUTE);
		int sec = c.get(Calendar.SECOND);
		
		//응답 
		PrintWriter out = response.getWriter();
		out.write("<html><head><title>CurrentTime </title></head>");
		out.write("<body><h1>");
		out.write("현재시간은 ");
		out.write(hour+"시 ");
		out.write(min+"분 ");
		out.write(sec+"초 입니다.");
		out.write("</h1></body></html>");
		out.close();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");	//응답을 내려보낼 때 내용 타입을 브라우저에 알려줌 
		response.setCharacterEncoding("utf-8");
		//처리 
		Calendar c = Calendar.getInstance();
		int hour = c.get(Calendar.HOUR_OF_DAY);
		int min = c.get(Calendar.MINUTE);
		int sec = c.get(Calendar.SECOND);
		
		//응답 
		PrintWriter out = response.getWriter();
		out.write("<html><head><title>CurrentTime </title></head>");
		out.write("<body><h1>");
		out.write("현재시간은 ");
		out.write(hour+"시 ");
		out.write(min+"분 ");
		out.write(sec+"초 입니다.");
		out.write("</h1></body></html>");
		out.close();
	}
	
	

}
