package com.demo;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


public class GradeCalculator extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		float physics = Float.parseFloat(request.getParameter("phy"));
		float chemistry = Float.parseFloat(request.getParameter("chem"));
		float maths = Float.parseFloat(request.getParameter("maths"));
		float biology = Float.parseFloat(request.getParameter("bio"));

		float total = physics + chemistry + maths + biology;
		float percentage = total / 4;


		if (percentage < 100 && percentage > 90) {
			request.setAttribute("grade", "A+");
			request.setAttribute("total", total);
			request.setAttribute("percentage", percentage);
			request.getRequestDispatcher("result.jsp").forward(request, response);

		} else if (percentage <= 90 && percentage > 80) {
			request.setAttribute("grade", "A");
			request.setAttribute("total", total);
			request.setAttribute("percentage", percentage);
			request.getRequestDispatcher("result.jsp").forward(request, response);
			
		} else if (percentage <= 80 && percentage > 70) {
			request.setAttribute("grade", "B+");
			request.setAttribute("total", total);
			request.setAttribute("percentage", percentage);
			request.getRequestDispatcher("result.jsp").forward(request, response);
			
		} else if (percentage <= 70 && percentage > 60) {
			request.setAttribute("grade", "B");
			request.setAttribute("total", total);
			request.setAttribute("percentage", percentage);
			request.getRequestDispatcher("result.jsp").forward(request, response);
			
		} else if (percentage <= 60 && percentage > 50) {
			request.setAttribute("grade", "C+");
			request.setAttribute("total", total);
			request.setAttribute("percentage", percentage);
			request.getRequestDispatcher("result.jsp").forward(request, response);
			
		} else if (percentage <= 50 && percentage > 35) {
			request.setAttribute("grade", "C");
			request.setAttribute("total", total);
			request.setAttribute("percentage", percentage);
			request.getRequestDispatcher("result.jsp").forward(request, response);
			
		} else {
			request.setAttribute("grade", "fail");
			request.setAttribute("total", total);
			request.setAttribute("percentage", percentage);
			request.getRequestDispatcher("result.jsp").forward(request, response);
			
		}
	}

}
