package damanna.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import damanna.board.service.INoticeBoardService;
import damanna.board.service.NoticeBoardServiceImpl;
import damanna.vo.NoticeBoardVO;


@WebServlet("/noticeInsert.do")
public class NoticeInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("WEB-INF/board/noticeBoard/write.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		NoticeBoardVO noticeVo = new NoticeBoardVO();
		
		noticeVo.setNotice_title(title);
		noticeVo.setNotice_content(content);
		
		INoticeBoardService service = NoticeBoardServiceImpl.getInstance();
		service.insertNotice(noticeVo);

		response.sendRedirect(request.getContextPath() + "/noticeList.do");
	}

}
