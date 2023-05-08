<%-- 
    Document   : additems
    Created on : Aug 24, 2015, 2:32:58 PM
    Author     : java2
--%>

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
        <style>
            #signup-form { 
                width: 550px; 
                margin: 0 auto; 
                margin-top: 50px; 
                margin-bottom: 50px; 
                background: #fff; 
                padding: 40px; 
                border: 10px solid #f2f2f2; 
                height: 450px;
            }
        </style>
    </head>
    <%
            if (request.getParameter("msg") != null) {%>
        <script>alert('Product Uploaded Successfully');</script>  
        <%}
            if (request.getParameter("msgg") != null) {%>
        <script>alert('Product Upload Faileds')</script>  
        <%}
        %>
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
                    <li><a href="chome.jsp" class="active">Home</a></li>
                    <li><a href="additems1.jsp">Add Service</a></li>   
                    <li><a href="plist.jsp">Service List</a></li>
                    <li><a href="index.html">Log Out</a></li>
                </ul>
                <div class="clear"></div>
            </div>
            <div id="black_bg" style="height: 550px;color: black;background: transparent">
              
                <div id="signup-form">
                    <center><h1 style="color: red">Add Service Details</h1></center>
                    <form action="itemaction.jsp" method="post"  style="margin-top: -60px;color: black">
                        
                        <label style="font-size: 20px">Service Model</label>&nbsp;&nbsp;
                        <select name="pname" style="width: 200px;height: 30px;font-size: 20px">
                            <option selected="">Select</option>
                            <option>Infrastructure</option>
                            <option>Platform</option>
                            <option>Hosting</option>
                            <option>Storage</option>
                        </select><br /><br />
                        <label style="font-size: 20px">Service Name</label>&nbsp;&nbsp;<input type="text" name="pitem"style="width: 200px;height: 20px;font-size: 20px;margin-left: 17px"/><br /><br />
                        <label style="font-size: 20px">Deployment Model</label>&nbsp;&nbsp;<input type="text" name="bname" style="width: 200px;height: 20px;font-size: 20px;margin-left: 18px"/><br /><br />
                        <label style="font-size: 20px">Server OS</label>&nbsp;&nbsp;<input type="text" name="bname" style="width: 200px;height: 20px;font-size: 20px;margin-left: 18px"/><br /><br />
                        <label style="font-size: 20px">Price</label>&nbsp;&nbsp;<input type="text" name="price"style="width: 200px;height: 20px;font-size: 20px;margin-left: 83px"/><br /><br />
                       <label style="font-size: 20px">Date</label>&nbsp;&nbsp;<input type="date" name="pdate"style="width: 200px;height: 20px;font-size: 20px;margin-left: 83px"/><br /><br />
                      
                        <label style="font-size: 20px">Image</label>&nbsp;&nbsp;<input type="file" name="image" style="width: 200px;height: 20px;font-size: 20px;margin-left: 86px"/><br /><br />
                      
                        
                        <input type="submit" value="Add" style="width: 130px;height: 35px;border-radius: 8px;font-size: 20px;background: yellowgreen;color: black"/>&nbsp;&nbsp;
                        <input type="reset" value="Reset" style="width: 130px;height: 35px;border-radius: 8px;font-size: 20px;background: yellowgreen"/>
                    </form>
                </div>
            </div>	
            <div id="footer">
                <p>Copyright &copy; 2015-2016. <!-- Do not remove -->Designed by YaAs<!-- end --></p>
            </div>
        </div>
    </body>
</html>

