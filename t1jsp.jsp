

<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>
<%
    String value =null;
    String key=null;
    String q = request.getParameter("q");

    try {
        int i = 0;

        Connection con = null;

        String url = "jdbc:mysql://localhost:3306/mycomp";
        String username = "root";
        String password = "root";
        String classname = "com.mysql.jdbc.Driver";
        PreparedStatement pt = null;
        Class.forName(classname);
        con = DriverManager.getConnection(url, username, password);
        int id=Integer.parseInt(q);
        pt = con.prepareStatement("select * from valk where id=?;");
        pt.setInt(1, id);
        ResultSet rs = pt.executeQuery();
        while (rs.next()) {
            key=rs.getString("masterk");
            value = rs.getString("valkcol");
        }
        con.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
Enter key  :  <input type="text" name="key"  value="<%out.print(key);%>"><br>
Enter value  :  <input type="text" name="value"  value="<%out.print(value);%>">