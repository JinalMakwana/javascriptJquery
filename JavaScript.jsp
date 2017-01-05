<%-- 
    Document   : JavaScript
    Created on : 5 Jan, 2017, 11:36:50 AM
    Author     : mtech
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <script>
            function validatenameform() {
                var name = document.myform.name.value;
               

                if (name == null || name == "") {
                    alert("Name can't be blank");
                    return false;
                }
                
            }
            function validatepassform(){
                 var password = document.myform.password.value;
                 if (password.length < 6) {
                    alert("Password must be at least 6 characters long.");
                    return false;
                }
            }
        </script>  
    <body>  
        <form name="myform" method="post" >  
            Name: <input type="text" name="name" onfocusout="validatenameform() "><br/>  
            Password: <input type="password" name="password" onfocusout="validatepassform() "><br/>  
            <input type="submit" value="register">  
        </form>  



    </body>
</html>
