
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style1.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    
    <body>
        <form name="demoForm" action="results.jsp" method="post">
            
            <h1>Simple Salary Calculator</h1>
            <hr>
            
            <table>
                
                <tbody>
                    
                    <tr>
                        <td>Hours Worked:</td>
                        <td><input type="text" name='hours' value='' size='50' required></td>
                    </tr>
                    
                    <tr>
                        <td>Hourly Pay:</td>
                        <td><input type="text" name='rate' value='' size='50' required></td>
                    </tr>
                    
                    <tr>
                        <td>Pre-tax Deduct:</td>
                        <td><input type="text" name='pre' value='' size='50' required></td>
                    </tr>
                    
                    <tr>
                        <td>Post-tax Deduct:</td>
                        <td><input type="text" name='post' value='' size='50' required></td>
                    </tr>
                
                </tbody>
                
            </table>
            
            <input type='reset' value="Clear" id='clear'>
            <input type='submit' value='Submit' id='submit'>
        
        </form>
    </body>
</html>
