
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deletion </title>
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
            Height:400px;
            text-align:justify-all;
            border:15px solid green;
            padding:50px;
            margin: 20px;
            margin-left: auto;
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
<body BGCOLOR="	#FFEFD5">
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
            <h2>Enter the roll number of the student t o be deleted </h2>
            <form name="f2" method="post" action="sucess3.jsp">
                <p>
                    <label>Roll no:<input type="number" name="custid" required>
                    </label></p>
                <input type="Submit" name="submit1">
            </form>
        </div>
</body>
</html>
