<%-- 
    Document   : feedback
    Created on : Aug 27, 2015, 10:33:17 AM
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
            width: 600px; 
            margin: 0 auto; 
            margin-top: 50px; 
            margin-bottom: 50px; 
            background: #fff; 
            padding: 40px; 
            border: 10px solid #f2f2f2; 
            height: 400px;
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
                        <li><a href="cartdetails.jsp">Cart</a></li>
                        <li><a href="index.html">Log out</a></li>
                    </ul>
                    <div class="clear"></div>
            </div>
            <%

                String uname = null;
                String pitem = null;
                try {
                    uname = session.getAttribute("uname").toString();
                    pitem = session.getAttribute("pitem").toString();
                    System.out.println("Product Item in Feedback " + pitem);

                    long timetsta = System.currentTimeMillis();
                    int minutes = (int) ((timetsta / (1000 * 60)) % 60);
                    int hours = 60 * minutes;
                    System.out.println("The Current Time is " + minutes + "Min");
                    System.out.println("The Current Hours is " + hours + "hours");
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            %>
            <div id="black_bg" style="height: 600px;background: transparent">
                <div id="signup-form" style="">
                    <center><h1>Feedback</h1></center>
                    <form action="feedaction.jsp" method="post" style="margin-top: -120px;">
                        <label style="font-size: 20px">Name</label>&nbsp;&nbsp;<input type="text" value="<%=uname%>" name="uname" style="margin-left: 70px" class="textbox1" readonly=""/><br /><br />
                        <label style="font-size: 20px">Service Name</label>&nbsp;&nbsp;<input type="text" value="<%=pitem%>" readonly="" name="pitem" style="margin-left: 10px" class="textbox1"/><br /><br />
                        <label style="font-size: 20px">Rating Status</label>&nbsp;&nbsp;
                        <select style="width: 100px;height: 30px;font-size: 18px" name="ratingstatus">
                            <option selected="">Select</option>
                            <option>Positive</option>
                            <option>Negative</option>
                            <option>Neutral</option>
                        </select><br /><br />
                        <label style="font-size: 20px">Rating</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" id="radio1" name="radios" value="Excellent" checked>
                            <label for="radio1">Excellent</label>
                            <input type="radio" id="radio2" name="radios" value="Very Good">
                                <label for="radio2">Very Good</label>
                                <input type="radio" id="radio3" name="radios" value="Good">
                                    <label for="radio3">Good</label> 
                                    <input type="radio" id="radio4" name="radios" value="Poor">
                                        <label for="radio4">Poor</label> 
                                        <input type="radio" id="radio5" name="radios" value="Very Poor">
                                            <label for="radio5">Very Poor</label> <br /><br />
                                            <label style="font-size: 20px">Comments :</label><br /><br />
                                            <textarea cols="30" rows="3" style="margin-left: 130px;margin-top: -40px;font-size: 18px" name="comments"></textarea><br /><br />
                                            <input type="submit" value="Submit" style="margin-left: 200px;margin-top: -10px" class="button"/>
                                            </form>
                                            </div>
                                            </div>	
                                            <div id="footer">
                                                <p>Copyright &copy; 2015-2016. <!-- Do not remove -->Designed by YaAs<!-- end --></p>
                                            </div>
                                            </div>
                                            </body>
                                            </html>


