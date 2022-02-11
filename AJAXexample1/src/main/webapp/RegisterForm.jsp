<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

   <script>
            function chkemail(a)
            {
                xmlhttp = new XMLHttpRequest();
                xmlhttp.onreadystatechange=function()
                {
                document.getElementById("res").innerHTML= xmlhttp.responseText;         
                }
                xmlhttp.open("POST","chkdata.jsp?q="+a,true);
                xmlhttp.send();
            }
        </script>

</head>
<body>

 <form action="RegSer" method="post">
            
            <p>Enter emailid</p>
            <p><input type="email" name="txtemail" required="" onblur="chkemail(this.value)"  /> </p>
           <div id="res">
           </div>
            <p>Enter password</p>
            <p><input type="password" name="txtpass" required=""  /> </p>
            <p>Enter mobileno</p>
            <p><input type="number" name="txtmobile"  required="" /> </p>
            <p>Enter fullname</p>
            <p><input type="text" name="txtfname" required="" /> </p>
            <p><input type="submit" name="btnsubmit" value="Click" /></p>
            
            
            
            
        </form>

</body>
</html>