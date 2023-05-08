<%@page import="java.util.UUID"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.cloudarmor.kk.action.Dbconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    Connection con = null;
    Statement st = null;
   // String imgid = request.getParameter("imgid");
    String pname = request.getParameter("pname");
    String pitem = request.getParameter("pitem");
    String brand = request.getParameter("bname");
    String price = request.getParameter("price");
    String pdate = request.getParameter("pdate");
     String image = request.getParameter("image");
     
     String imgid = UUID.randomUUID().toString().substring(0, 3);
     
    try{
        con = Dbconnection.getConnection();
        st = con.createStatement();
        
        
        
       PreparedStatement ps=con.prepareStatement("insert into product values(?,?,?,?,?,?,?,?)");
    ps.setString(1,imgid);
    ps.setString(2,image);
    ps.setString(3,image);
    ps.setString(4,pname);
    ps.setString(5,pitem);
    ps.setString(6,brand);
    ps.setString(7,price);
    ps.setString(8,pdate);
   
    int ik=ps.executeUpdate();
    if(ik>0)
        {
            response.sendRedirect("additems.jsp?msg=success");
        }
        else
        {
            response.sendRedirect("additems.jsp?msgg=failed");
        }
    }
    catch(Exception ex)
    {
        ex.printStackTrace();
    }
%>