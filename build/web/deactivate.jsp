<%@page import="java.sql.ResultSet"%>
<%@page import="com.cloudarmor.kk.action.Mail"%>
<%@page import="com.cloudarmor.kk.action.Dbconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String uid = request.getQueryString();
    System.out.println("The User ID in Deactivate "+uid);
    Connection con = null;
    Statement st = null;
    Statement st1 = null;
    ResultSet rs = null;
    try {
        con = Dbconnection.getConnection();
        st = con.createStatement();
        rs = st.executeQuery("select * from user where uid='" + uid + "'");
        if (rs.next()) {
            st1 = con.createStatement();
            int i = st1.executeUpdate("update user set status='No' where uid='" + rs.getString("uid") + "'");
            if (i != 0) {
                Mail m = new Mail();
                m.sendMail("Name :"+rs.getString("name")+"\n\tYou are deactivated by CloudArmor", "KK", rs.getString("email"));
                response.sendRedirect("details.jsp?dmsg=success");
            } else {
                response.sendRedirect("details.jsp?msgg=failed");
            }
        }
        else
        {
            out.println("Error");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }

%>