package damanna.member.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class profileUploadServlet
 */
@WebServlet("/profileUpload.do")
public class ProfileUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uploadPath = "D:/damanna/profileImgs";

		File file = new File(uploadPath);
		if (!file.exists()) {
			file.mkdirs();
		}
		request.setCharacterEncoding("UTF-8");

		String memberId = request.getParameter("memberId");

		String fileName = "";

		List<UploadDetail> fileList = new ArrayList<>();

		for (Part part : request.getParts()) {
			fileName = extractFileName(part);

			if (!"".equals(fileName)) {
				UploadDetail detail = new UploadDetail();

				detail.setFileName(fileName);

				detail.setFileSize((int) Math.ceil(part.getSize() / 1024.0));
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	private String extractFileName(Part part) {
		String fileName = "";

		// Content-Disposition 헤더 값 구하기
		String contentDisposition = part.getHeader("Content-Disposition");
		String[] items = contentDisposition.split(";");
		for (String item : items) {
			if (item.trim().startsWith("filename")) {
				fileName = item.substring(item.indexOf("=") + 2, item.length() - 1);
			}
		}
		return fileName;
	}
}
