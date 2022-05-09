<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String id = request.getParameter("userid");
    String driver = "org.postgresql.Driver";
    String connectionUrl = "jdbc:postgresql://localhost:5432/postgres";
    String database = "postgres";
    String userid = "postgres";
    String password = "srec@123";
    try {
        Class.forName(driver);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<head>
    <style>
        table{
            margin-left: auto;
            margin-right: auto;
        }
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
        th, td {
            height: 50px;
            vertical-align: bottom;
            text-align: left;
            border: 1px solid black;
            border-collapse: collapse;
        }
        td {
            background-color: skyblue;
        }
        th{
            background-color:orangered;
        }

    </style>

</head>
<body BGCOLOR="	#FFEFD5" >
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
            <h1>Details of Students in the instutiuon</h1>
            <table border="1">
                <tr>
                    <th>Student id</th>
                    <th>Name</th>
                    <th>Student Address</th>
                    <th>Contact number</th>
                    <th>Parent Name</th>
                    <th> Parent Number</th>
                    <th>Class in CurrentYear</th>

                </tr>
                <jsp:useBean id="obj" class="com.dilip.crud.CustomerBean"/>
                <jsp:setProperty property="*" name="obj" />
                <%
                    int a= obj.getCustid();
                    try{
                        connection = DriverManager.getConnection(connectionUrl, userid, password);
                        statement=connection.createStatement();

                        resultSet = statement.executeQuery("select*from customer where custid="  + a + "");

                        while(resultSet.next()){
                %>
                <tr>
                    <td><%=resultSet.getString("custid") %></td>
                    <td><%=resultSet.getString("custname") %></td>
                    <td><%=resultSet.getString("stdadd") %></td>
                    <td><%=resultSet.getString("stdnum") %></td>
                    <td><%=resultSet.getString("parname") %></td>
                    <td><%=resultSet.getString("parnum") %></td>
                    <td><%=resultSet.getInt("std") %></td>

                </tr>
                <%
                        }
                        connection.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>
            </table>
        </div>
</body>
</html>