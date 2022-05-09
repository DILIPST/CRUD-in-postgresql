<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Updation</title>
    <style>

        body{
            font-family: 'Poppins', sans-serif;
            text-align: center;
        }

        .navbar{
            display: flex;
            align-items: center;
            padding: 20px;

        }
        nav{
            flex: 1;
            text-align: right;
        }
        .dd
        {
            background-color: light grey;
            width:1000px;
            border:15px solid green;
            padding:50px;
            margin: 20px;
            margin-left: auto;
            text-align:justify-all;
            margin-right: auto;
        }
        nav ul{
            display: inline-block;
            list-style-type: none;
        }
        nav ul li{
            display: inline-block;
            margin-right:20px;
        }
        /*for menu links*/
        a{
            text-decoration: none;
            color:#555;
        }
        .mm
        {
            border:15px #FFEFD5;
            margin-left: 320px;
            margin-right: 320px;
            text-align: right;
        }
        p{
            color:#555;
        }
        .container{
            max-width: 1300px;/*width of the header section will not be more than 1300px*/
            margin: auto;
            padding-left: 25px;
            padding-right: 25px;
        }
    </style>
</head>
<BODY BGCOLOR="	#FFEFD5">
<div class="header">
    <div class="container">


        <div class="navbar">
            <nav>
                <ul id="MenuItems"><!--use this id in js-->
                    <li><a href="customer.jsp">CREATE DATA</a></li>
                    <li><a href="update.jsp">UPDATE DATA</a></li>
                    <li><a href="delete.jsp">DELETE DATA</a></li>
                    <li><a href="Read.jsp">READ DATABASE</a></li>
                    <li><a href="rs.jsp">READ SINGLE DATA</a></li>
                </ul>
            </nav></div>
        <div class="dd">
<h2>Enter the student id to be updated</h2>
<form  name="f1" method="post"   action="success2.jsp" >
    <div class="mm">
    <p>
        <label>Student id:
            <input type="number" name="custid" required>
        </label>
    </p>
    <p>
    Enter the details to be modified:
    <p>
        <label>Name:
            <input type="text" name="custname" required>
        </label></p>
    </p>
    <label>Address:
        <input type="text" name="stdadd" >
    </label></p>
    <p>
        <label>Number:
            <input type="text" name="stdnum" required>
        </label></p>
    <label>Parent name :
        <input type="text" name="parname" required>
    </label></p>
    <label> Parent Number :
        <input type="text" name="parnum" required>
    </label></p>
    <label>Class :
        <input type="number" name="std" required>
    </label></p>

    <input type="Submit" value="Submit"/>
    </div>
</form>
    </div>
</body>
</html>
