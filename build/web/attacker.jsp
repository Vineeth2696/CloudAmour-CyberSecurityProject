<%-- 
    Document   : details
    Created on : Aug 25, 2015, 10:21:24 AM
    Author     : java2
--%>

<%@page import="com.cloudarmor.kk.action.TrippleDes"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.cloudarmor.kk.action.Dbconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>CloudArmor</title>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <link href="styles.css" rel="stylesheet" type="text/css" media="screen" />
        <link href='http://fonts.googleapis.com/css?family=Merienda+One' rel='stylesheet' type='text/css' />
    </head>
    <body>	
        <%
            if (request.getParameter("amsg") != null) {%>
        <script>alert('User Activated Successfully');</script>
        <%}
            if (request.getParameter("dmsg") != null) {%>
        <script>alert('User Deactivated Successfully');</script>
        <%}
            if (request.getParameter("msgg") != null) {%>
        <script>alert('Process Failed');</script>
        <%}
        %>
        <div id="header_bg">
            <div id="logo">
                <h1><a href="#" style="color: black">CloudArmor</a></h1>
                <center>
                    <h1 style="font-size: 26px;line-height: 30px;font-family: 'Merienda One', cursive;">Supporting Reputation-based
                        Trust Management<br /> for Cloud Services</h1>
                </center>
            </div>
            <div id="prew_img">
                <ul class="round">
                    <li><img src="images/header1.jpg" alt="" /></li>
                    <li><img src="images/header2.jpg" alt="" /></li>
                    <li><img src="images/header3.jpg" alt="" /></li>
                    <li><img src="images/header4.jpg" alt="" /></li>
                    <li><img src="images/header5.jpg" alt="" /></li>
                    <li><img src="images/header6.jpg" alt="" /></li>
                </ul>
                <script type="text/javascript" src="lib/jquery.js"></script>
                <script type="text/javascript" src="lib/jquery.roundabout.js"></script>
                <script type="text/javascript">
            $(document).ready(function () {
                $('.round').roundabout();
            });

                </script>

            </div>
            <div id="menu">
                <ul>
                    <li><a href="ihome.jsp" class="active">Home</a></li>
                    <li><a href="details.jsp">User Details</a></li>  
                    <li><a href="attacker.jsp">Attacker List</a></li>
                    <li><a href="index.html">Log out</a></li>
                </ul>
                <div class="clear"></div>
            </div>
            <div id="black_bg" style="height: 300px;color: white;overflow-x: scroll"><br />
                <h1 style="margin-left: 450px;">Sybil Attack Details</h1><br />
                <table border="1" style="margin-left: 100px;text-align: center">
                    <tr>
                        <th>User ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Birth Day</th>
                        <th>Location</th>
                        <th>Contact No</th>
                        <th>IP Address</th>
                        <th>Signup Time</th>
                    </tr>
                    <tr>
                        <%
                            Connection con = null;
                            Statement st = null;
                            ResultSet rs = null;
                            try {
                                con = Dbconnection.getConnection();
                                st = con.createStatement();
                                rs = st.executeQuery("select * from sybilattack");
                                while (rs.next()) {%>
                        <td><%=rs.getString("uid")%></th>  
                            <td><%=rs.getString("name")%></td>  
                            <td><%=rs.getString("email")%></td>  
                            <td><%=rs.getString("dob")%></td>  
                            <td><%=rs.getString("location")%></td>  
                            <td><%=rs.getString("contactno")%></td>  
                            <td><%=rs.getString("ipaddress")%></td>  
                            <td><%=rs.getString("rtime")%></td>  
                    </tr> 
                    <%}
                        } catch (Exception ex) {
                            ex.printStackTrace();
                        }
                    %>
                </table><br />
                 <h1 style="margin-left: 450px;">Collusion Attack Details</h1><br />
                <table border="1" style="margin-left: 100px;text-align: center">
                    <tr>
                        <th>Username</th>
                        <th>Email</th>
                        <th>IP Address</th>
                        <th>Service Name</th>
                        <th>Rating</th>
                        <th>Rating Values</th>
                    </tr>
                    <tr>
                        <%
                            try {
                                con = Dbconnection.getConnection();
                                st = con.createStatement();
                                rs = st.executeQuery("select * from blocklist");
                                while (rs.next()) {%>
                        <td><%=rs.getString("uname")%></th>  
                            <td><%=rs.getString("email")%></td>  
                            <td><%=rs.getString("ipaddress")%></td>  
                            <td><%=rs.getString("product")%></td>  
                            <td><%=rs.getString("rating")%></td>  
                            <td><%=rs.getString("ratingvalues")%></td>  
                    </tr> 
                    <%}
                        } catch (Exception ex) {
                            ex.printStackTrace();
                        }
                    %>
                </table>
            </div>	
            <div id="footer">
                <p>Copyright &copy; 2015-2016. <!-- Do not remove -->Designed by YaAs<!-- end --></p>
            </div>
        </div>
    </body>
</html>
