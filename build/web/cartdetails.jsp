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
            <div id="menu">
                <ul>
                    <ul>
                        <li><a href="uhome.jsp" class="active">Home</a></li>
                        <li><a href="profile.jsp">User Profile</a></li>   
                        <li><a href="search.jsp">Search</a></li>
                        <li><a href="cartdetails.jsp">Service List</a></li>
                        <li><a href="index.html">Log out</a></li>
                    </ul>
                    <div class="clear"></div>
            </div>
            <div id="black_bg" style="height: 300px;background: transparent">
                <div id="signup-form" style="">
                    <center> <h1 style="margin-top: 3px">Cloud Order Details</h1></center><br />
                    <table style="margin-left: 100px;text-align: center" border="1">
                        <tr>
                            <th>Service Model</th>
                            <th>Service Name</th>
                            <th>Duration</th>
                            <th>Total Price</th>
                        </tr>
                        <tr>
                            <%
                                String uname = session.getAttribute("email").toString();
                                String pitem = null;
                                try {
                                    Connection con = Dbconnection.getConnection();
                                    Statement st = con.createStatement();
                                    ResultSet rs1 = st.executeQuery("select * from cart where status='NO' AND name='" + uname + "'");
                                    while (rs1.next()) {
                                        pitem = rs1.getString("productitem");
                            %>
                            <td><%=rs1.getString("productname")%></td>
                            <td><%=rs1.getString("productitem")%></td>
                            <td><%=rs1.getString("quantity")%> Days</td>
                            <td><%=rs1.getString("total")%></td>
                        </tr>
                        <%
                                }
                            } catch (Exception e) {
                                System.out.println("Exception Error in cartdetails " + e.getMessage());
                            }
                        %>

                    </table><br />
                    <a href="paction.jsp?<%=pitem%>"><button class="button"  style="margin-left: 200px;width: 100px;height: 30px;background: orange;border: currentColor;border-radius: 10px;font-size: 15px;">Buy Cloud</button></a>
                </div>
            </div>	
            <div id="footer">
                <p>Copyright &copy; 2015-2016. <!-- Do not remove -->Designed by YaAs<!-- end --></p>
            </div>
        </div>
    </body>
</html>

