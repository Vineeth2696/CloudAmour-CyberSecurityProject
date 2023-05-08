<%@page import="com.cloudarmor.kk.action.Dbconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%
    String imgid = request.getParameter("id");
    Connection con = Dbconnection.getConnection();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from product where imgid='" + imgid + "'");
    if (rs.next()) {
            st.executeUpdate("delete from product where imgid='" + imgid + "'");
            response.sendRedirect("plist.jsp?dmsg=Product Removed Successfully");
    }
%>