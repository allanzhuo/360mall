package servlets;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import dao.impl.GoodsDaoimpl;
import dao.impl.UserDaoImpl;



import entity.Goods;
import entity.User;



public class GoodsServlet extends HttpServlet {

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
		if(opr.equals("det")){
			String id=request.getParameter("id");
			Goods goods=new Goods();
			goods.setId(id);
			GoodsDaoimpl gdi=new GoodsDaoimpl();
			List<Goods> list=gdi.getGoodById(goods);
			request.getSession().setAttribute("list", list);
			response.sendRedirect("detail.jsp?opr=det&id="+id);
		}else if(opr.equals("list")){
			GoodsDaoimpl gdi=new GoodsDaoimpl();
			List<Goods> listgoods=gdi.getAll();
			request.getSession().setAttribute("listgoods", listgoods);
			response.sendRedirect("controlgoods.jsp");
		}else if(opr.equals("fuzzy")){
		    request.setCharacterEncoding("utf-8");
		    GoodsDaoimpl gdi=new GoodsDaoimpl();
			String goods=request.getParameter("goods");
			List<Goods> listgoods=gdi.getGoodByName(goods);
			request.getSession().setAttribute("listgoods", listgoods);
			String from=request.getParameter("from");
			if(from.equals("admin")){
				response.sendRedirect("controlgoods.jsp");
			}else{
				response.sendRedirect("search.jsp");
			}
		}else if(opr.equals("del")){
			GoodsDaoimpl gdi=new GoodsDaoimpl();
			String id=request.getParameter("id");
			id=new String(id.getBytes("ISO-8859-1"),"UTF-8");
			Goods goods=new Goods();
			goods.setId(id);
			int result=gdi.delete(goods);
			if(result==1){
				out.print("<script>alert('删除成功！');location.href='GoodsServlet?opr=list';</script>");
			}else{
				out.print("<script>alert('删除失败！');location.href='GoodsServlet?opr=list';</script>");
			}
		}else if(opr.equals("update")){
			String id=request.getParameter("id");
		  	String name=request.getParameter("name");
		  	name=new String(name.getBytes("ISO-8859-1"),"utf-8");
		  	String price=request.getParameter("price");
		  	String stock=request.getParameter("stock");
		  	String img1=request.getParameter("img1");
		  	String img2=request.getParameter("img2");
		  	String img3=request.getParameter("img3");
		  	String img4=request.getParameter("img4");
		  	GoodsDaoimpl gdi=new GoodsDaoimpl();
		  	Goods goods=new Goods();
		  	goods.setId(id);
		  	goods.setName(name);
		  	goods.setPrice(Double.parseDouble(price));
		  	goods.setStock(Integer.parseInt(stock));
		  	goods.setImg1(img1);
		  	goods.setImg2(img2);
		  	goods.setImg3(img3);
		  	goods.setImg4(img4);
			int result=gdi.update(goods);
			if(result==1){
				out.print("<script>alert('修改信息成功！');location.href='GoodsServlet?opr=list';</script>");
		    }else{
		    	out.print("<script>alert('修改信息失败！');location.href='GoodsServlet?opr=list';</script>");
			}
		}else if(opr.equals("insert")){
			request.setCharacterEncoding("utf-8");
			//上传文件的服务器端存储路径
			String uploadFilePath=request.getSession().getServletContext().getRealPath("img/");
			//获得文件的工厂类
			FileItemFactory factory=new DiskFileItemFactory();
			//通过工厂类创建一个Servelet文件上传类
			ServletFileUpload upload=new ServletFileUpload(factory);
			//把请求中的数据读取出来，并且封装成FileItem对象，然后存入List集合
			try {
				List<FileItem> items=upload.parseRequest(request);
				Goods goods=new Goods();
				for(FileItem item:items){
					if(item.isFormField()){
						if (item.getFieldName().equals("id")) {
							goods.setId(item.getString("utf-8"));
						}
						if(item.getFieldName().equals("name")){
							goods.setName(item.getString("utf-8"));
						}
						if(item.getFieldName().equals("price")){
							goods.setPrice(Double.parseDouble(item.getString("utf-8")));
						}
						if(item.getFieldName().equals("stock")){
							goods.setStock(Integer.parseInt(item.getString("utf-8")));
						}
					}else{
						String fileName=item.getName();
						if(item.getFieldName().equals("img1")){
							goods.setImg1(fileName);
						}
						if(item.getFieldName().equals("img2")){
							goods.setImg2(fileName);
						}
						if(item.getFieldName().equals("img3")){
							goods.setImg3(fileName);
						}
						if(item.getFieldName().equals("img4")){
							goods.setImg4(fileName);
						}
						if(fileName!=null&& !fileName.equals("")){
							File fullFile=new File(fileName);
							File saveFile=new File(uploadFilePath,fullFile.getName());
							item.write(saveFile);
						}
					}
				}

				int result=new GoodsDaoimpl().insert(goods);
				if(result==1){
					out.print("<script>alert('添加商品成功！');location.href='GoodsServlet?opr=list';</script>");
					//response.sendRedirect("GoodsServlet?opr=list");
				}
			} catch (FileUploadException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
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
