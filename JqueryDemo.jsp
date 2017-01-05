<%-- 
    Document   : GETjsp
    Created on : Dec 17, 2016, 6:05:17 PM
    Author     : admin
--%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
        <script src="js/request.js"></script>
        <script>
            $(document).ready(function () {
                $("#u").focusout(function () {
                    var value = $(this).val();
                    $.get("t1jsp.jsp", {q: value}, function (data) {
                        $("#javaquery").html(data);
                    });
                });
            });
            

        </script>
    </head>
    <body>

      
        <form  method="post">
            Enter id  :  <input type="text" id="u" value=""><br>
            <div id="javaquery"> Enter key  :  <input type="text" name="key" value=""><br>
                Enter value: <input type="text" name="value" value=""><br><br> </div>
            <input type="submit"  name="btn" value="Insert">

            
            <h1>Requester</h1>
<div id="requester">
    <input type="button" onclick="$request.test();" value="test">
    <input type="button" onclick="$request.activatePoll();" value="poll">
    <input type="button" onclick="$request.disablePoll();" value="turn off poll">
</div>
            
            
            
            
            
        </form>


        </body>
    </html>



