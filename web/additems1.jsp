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
                width: 510px; 
                margin: 0 auto; 
                margin-top: 50px; 
                margin-bottom: 50px; 
                background: #fff; 
                padding: 40px; 
                border: 10px solid #f2f2f2; 
                height: 300px;
            }
        </style>
        <script>
            function readURL(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();
                    reader.onload = function (e) {
                        document.getElementById('preview').src = e.target.result;
                    }
                    reader.readAsDataURL(input.files[0]);
                }
            }
        </script>
    </head>
    <body>	
        <%
            if (request.getParameter("msg") != null) {%>
        <script>alert('Product Uploaded Successfully');</script>  
        <%}
            if (request.getParameter("msgg") != null) {%>
        <script>alert('Product Upload Faileds')</script>  
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
                    <li><a href="chome.jsp" class="active">Home</a></li>
                    <li><a href="additems1.jsp">Add Service</a></li>   
                    <li><a href="plist.jsp">Service List</a></li>
                    <li><a href="accesslist.jsp">Access List</a></li>
                    <li><a href="index.html">Log Out</a></li>
                </ul>
                <div class="clear"></div>
            </div>
            <div id="black_bg" style="height: 550px;color: black;background: transparent">
                <div id="signup-form">
                    <center><h1 style="color: red">Add Service Details</h1></center>
                    <form id="form1" action="Upload" method="post" enctype="multipart/form-data" style="margin-top: -60px;color: black">
                        <label style="font-size: 20px">Service Image</label><input id="imgfile" type="file" name="image"  onchange="readURL(this)" style="width: 280px;height: 30px;font-size: 20px;margin-left: 5px"/><br /><br />
                        <img id="preview" src="images/noimage.jpg"  width="200" height="200"alt="your image" />
                        <input type="submit" value="Upload" style="margin-left: -250px;width: 130px;height: 35px;border-radius: 8px;font-size: 20px;background: yellowgreen;color: black"/>&nbsp;&nbsp;
                    </form>
                </div>
            </div>	
            <div id="footer">
                <p>Copyright &copy; 2015-2016. <!-- Do not remove -->Designed by YaAs<!-- end --></p>
            </div>
        </div>
    </body>
</html>

