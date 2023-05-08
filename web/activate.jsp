<%@page import="com.cloudarmor.kk.action.Mail"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.cloudarmor.kk.action.Dbconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String uid = request.getQueryString();
    Connection con = null;
    Statement st = null;
    Statement st1 = null;
    ResultSet rs = null;
    try {
        con = Dbconnection.getConnection();
        st = con.createStatement();
        rs = st.executeQuery("select * from user where uid='" + uid + "'");
        if (rs.next()) {
            st1 =con.createStatement();
            int i = st1.executeUpdate("update user set status='Yes' where uid='" + uid + "'");
            if (i != 0) {
                Mail m = new Mail();
                m.sendMail("Name :"+rs.getString("name")+"\n\tYou are activated by CloudArmor", "KK", rs.getString("email"));
                response.sendRedirect("details.jsp?amsg=success");
            } else {
                response.sendRedirect("details.jsp?msgg=failed");
            }
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }

%>