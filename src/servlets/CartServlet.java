package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.impl.CartDaoImpl;

import entity.Cart;

public class CartServlet extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		String opr=request.getParameter("opr");
		if(opr.equals("add")){
		String id=(String)request.getSession().getAttribute("username");
		String gid=request.getParameter("gid");
		String img=request.getParameter("img");
		String name=request.getParameter("name");
		name=new String(name.getBytes("ISO-8859-1"),"UTF-8");
		String type=request.getParameter("color");
		String price=request.getParameter("price");
		String num=request.getParameter("num");
		Cart cart=new Cart();
		cart.setId(id);
		cart.setGid(gid);
		cart.setImg(img);
		cart.setName(name);
		cart.setType(type);
		cart.setPrice(Double.parseDouble(price));
		cart.setNum(Integer.parseInt(num));
		CartDaoImpl cdi=new CartDaoImpl();
		List<Cart> list=cdi.getCartByGid(cart);
		if(list==null||list.size()<1){
			int result1=new CartDaoImpl().insert(cart);
			if(result1==1){
				out.print("<script>alert('添加购物车成功');window.history.back(-1);</script>");
				
			}else{
			out.print("<script>alert('请登录后再添加购物车');window.history.back(-1);</script>");
			}
		}else{
			for (Cart cart2 : list) {
				int num1=cart2.getNum()+cart.getNum();
				cart.setNum(num1);
				int result= new CartDaoImpl().update(cart);
				if(result==1){
					out.print("<script>alert('添加购物车成功');window.history.back(-1);</script>");
				}
			}
		}
		}else if(opr.equals("list")){
			Cart cart=new Cart();
			String id=(String)request.getSession().getAttribute("username");
			cart.setId(id);
			CartDaoImpl cdi=new CartDaoImpl();
			List<Cart> list2=cdi.getAll(cart);
			double total = 0;
			for (Cart cart2 : list2) {
				total+=cart2.getPrice()*cart2.getNum();
			}
			request.getSession().setAttribute("total", total);
			request.getSession().setAttribute("list2", list2);
			response.sendRedirect("cart.jsp");
			
		}else if(opr.equals("del")){
			String gid=request.getParameter("gid");
			String type=request.getParameter("type");
			type=new String(type.getBytes("ISO-8859-1"),"UTF-8");
			String id=(String)request.getSession().getAttribute("username");
			Cart cart=new Cart();
			cart.setId(id);
			cart.setGid(gid);
			cart.setType(type);
			CartDaoImpl cdi=new CartDaoImpl();
			int result=cdi.delete(cart);
			if(result!=0){
				out.print("<script>alert('删除成功');location.href='CartServlet?opr=list';</script>");
				
			}else{
				out.print("<script>alert('删除失败');location.href='CartServlet?opr=list';</script>");
			}
			
			
			
		}
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
