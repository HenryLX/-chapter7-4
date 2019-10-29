package com.ylx.JSTL;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/JSTLCore")
public class JSTLCore extends HttpServlet{

	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		List<Orders> orderList=new ArrayList<>();
		Orders orders1=new Orders();
		orders1.setId("00551");
		orders1.setAddress("北京昌平");
		orders1.setPhone("13785594487");
		Orders orders2=new Orders();
		orders2.setId("00552");
		orders2.setAddress("河北唐三");
		orders2.setPhone("15855594483");
		orderList.add(orders1);
		orderList.add(orders2);
		
		req.setAttribute("username", "张三");
		req.setAttribute("orders", orderList);
		req.getRequestDispatcher("/JSTLCore.jsp").forward(req, resp);
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doGet(req, resp);
	}
}
