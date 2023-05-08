<%-- 
    Document   : search
    Created on : Aug 25, 2015, 12:30:30 PM
    Author     : java2
--%>

<%@page import="com.cloudarmor.kk.action.Dbconnection"%>
<%@page import="java.sql.ResultSet"%>
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
    <style>
        #signup-form { 
            width: 500px; 
            margin: 0 auto; 
            margin-top: 50px; 
            margin-bottom: 50px; 
            background: #fff; 
            padding: 40px; 
            border: 10px solid #f2f2f2; 
            height: 200px;
            border-radius: 25px;
        }
    </style>
    <body>	    
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
            <%
            String pitem[] = request.getQueryString().split(",");
            %>
            <div id="menu">
                <ul>
                    <ul>
                        <li><a href="uhome.jsp" class="active">Home</a></li>
                        <li><a href="profile.jsp">User Profile</a></li>   
                        <li><a href="search.jsp">Search</a></li>
                        <li><a href="cartdetails.jsp">Cart</a></li>
                        <li><a href="index.html">Log out</a></li>
                    </ul>
                    <div class="clear"></div>
            </div>
            <div id="black_bg" style="height: 300px;background: transparent">
                <div id="signup-form" style="overflow-y:  scroll">
                    <a href="searchview.jsp?focus=<%=pitem[1]%>" style="color: red;float: right">Close</a>
                    <center><h1>User Comments of Service</h1></center><br />
                    <table style="text-align: center;font-size: 15px;margin-left: 60px">
                        <tbody>

                            <%
                                Connection con = null;
                                Statement st = null;
                                ResultSet rs = null;
                                try {
                                    con = Dbconnection.getConnection();
                                    st = con.createStatement();
                                    rs = st.executeQuery("select * from feed where feedback='" + pitem[0] + "' AND status='Yes'");
                                    while (rs.next()) {%>
                            <tr>
                                <th scope="row">Service Name</th>
                                <td><%=rs.getString("feedback")%></td>
                            </tr>
                            <tr>
                                <th scope="row">Comments by</th>
                                <td><%=rs.getString("name")%></td>
                            </tr>
                            <tr>
                                <th scope="row">Comments</th>
                                <td><%=rs.getString("comments")%></td>
                            </tr>
                            <tr>
                                <th scope="row">Time</th>
                                <td><%=rs.getString("date_time")%></td>
                            </tr>
                            <tr>
                                <th>---------------------------------------</</th>
                                <td>--------------------</td>
                            </tr>
                            <%}
                                } catch (Exception ex) {
                                    ex.printStackTrace();
                                }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>	
            <div id="footer">
                <p>Copyright &copy; 2015-2016. <!-- Do not remove -->Designed by YaAs<!-- end --></p>
            </div>
        </div>
    </body>
</html>

