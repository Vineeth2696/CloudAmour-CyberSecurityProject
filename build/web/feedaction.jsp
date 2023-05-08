<%@page import="com.cloudarmor.kk.action.Dbconnection"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.net.InetAddress"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%
    Connection con = null;
    Statement st = null;
    Statement st1 = null;
    ResultSet rs;
    String n = null, p = null, rs1 = null, r = null, c = null, userip = null, email = null, startD = null,uid=null;
    long millseconds, time,endTime,finalTime;
    int startTime = 0;
    try {
        uid = session.getAttribute("uid").toString();
        email = session.getAttribute("email").toString();
        System.out.println("User Mail in FeedAction " + email);
        n = request.getParameter("uname");
        System.out.println("User Name in FeedAction " + n);
        p = request.getParameter("pitem").replace("%20", " ");
        System.out.println("User Product in FeedAction " + p);
        rs1 = request.getParameter("ratingstatus");
        r = request.getParameter("radios");
        c = request.getParameter("comments");
        Calendar cal = Calendar.getInstance();
        SimpleDateFormat dateFormat = new SimpleDateFormat();
        startD = cal.getTime().toGMTString().replaceAll("GMT", " ");
        InetAddress ip;
        ip = InetAddress.getLocalHost();
        userip = ip.getHostAddress();
        System.out.println("System Ip " + userip);
        millseconds = System.currentTimeMillis();
        startTime = (int)millseconds;
        System.out.println("The Minutes is " + millseconds);
        con = Dbconnection.getConnection();
        st = con.createStatement();
        rs = st.executeQuery("select * from feed where email='" + email + "' AND ipaddr='" + userip + "' AND feedback='" + p + "'");
        if (rs.next()) {
            st1 = con.createStatement();
            st1.executeUpdate("insert into blocklist(uname, email, ipaddress, product, rating, ratingvalues)values('" + n + "','" + email + "','" + userip + "','" + p + "','" + rs1 + "','" + r + "')");
            endTime = (long)rs.getInt("stime");
            finalTime = startTime - endTime;
            System.out.println("The EndTime is " + finalTime);
            if (finalTime >= 20000) {
                int j = st.executeUpdate("insert into blocklist(uname, email, ipaddress, product, rating, ratingvalues)values('" + n + "','" + email + "','" + userip + "','" + p + "','" + rs1 + "','" + r + "')");
                if (j != 0) {
                    response.sendRedirect("search.jsp?msg=Thanks_for_Giving_Feedback");
                }
            } else {
                int k = st.executeUpdate("insert into feed (feedback, rating, ratingvalues, comments, ipaddr, date_time, name, email, status, stime,uid) values ('" + p + "','" + rs1 + "','" + r + "','" + c + "','" + userip + "','" + startD + "','" + n + "','" + email + "','No','" + startTime
                        + "','"+uid+"')");
                if (k != 0) {
                    response.sendRedirect("search.jsp?msg=Thanks_for_Giving_Feedback");
                }
            }
        } else {
            int i = st.executeUpdate("insert into feed (feedback, rating, ratingvalues, comments, ipaddr, date_time, name, email, status, stime,uid) values ('" + p + "','" + rs1 + "','" + r + "','" + c + "','" + userip + "','" + startD + "','" + n + "','" + email + "','No','" + startTime
                    + "','"+uid+"')");
            if (i != 0) {
                response.sendRedirect("search.jsp?msg=Thanks_for_Giving_Feedback");
            }
        }

    } catch (Exception e) {
        e.printStackTrace();
    }

%>