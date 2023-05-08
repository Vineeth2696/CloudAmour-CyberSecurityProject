<%@page import="com.cloudarmor.kk.action.Dbconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    Connection con = null;
    Statement st = null;
    String[] data = request.getQueryString().split(",");
    try{
        con = Dbconnection.getConnection();
        st = con.createStatement();
        int i = st.executeUpdate("update cart set cstatus='Yesw' where uid='"+data[0]+"' AND productname='"+data[1]+"'");
        if(i!=0)
        {
            response.sendRedirect("accesslist.jsp?msg=Access");
        }
    }
    catch(Exception ex)
    {
        ex.printStackTrace();
    }

%>