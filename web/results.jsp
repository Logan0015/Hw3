<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style1.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Your Salary Calculations</title>
    </head>
    
    <%
        int hours = Integer.parseInt(request.getParameter("hours"));
        int rate = Integer.parseInt(request.getParameter("rate"));
        int pre = Integer.parseInt(request.getParameter("pre"));
        int post = Integer.parseInt(request.getParameter("post"));
        
        
        
    
    
    
    %>
    
    <body>
        <h1>Your Salary</h1>
        
            <table border='1'>
            <tbody>
                <tr>
                    <td>Total Hours Worked:</td>
                    <td><%= hours %></td>
                </tr>
                
                <tr>
                    <td>Hourly Rate:</td>
                    <td><%= "$" +rate %></td>
                </tr>
                
                <tr>
                    <td># Hours Overtime:</td>
                    <td><% 
                        int over = hours - 40;
                        if (over < 0)
                        { out.println("none");
                        
                        }
                        else 
                            out.println (+over);
                    %></td>
                </tr>
                
                <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td><%
                        double overRate = 0;
                        
                        if (hours > 40)
                        {overRate = rate * 1.5;
                        out.println("$"+overRate);
                        }
                        else
                            out.println("none");
                    %></td>
                </tr>
                
                <tr>
                    <td>Gross Pay:</td>
                    <td><%
                        double grossPay;
                        
                        if (hours <=40 )
                        {grossPay = hours * rate;
                        out.println("$"+grossPay);}
                        else
                        {grossPay = (40 * rate) + (over * overRate);
                            out.println("$"+grossPay);}
                        %></td>
                </tr>
                
                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><%= "$" +pre %></td>
                </tr>
                
                <tr>
                    <td>Pre-tax Pay:</td>
                    <td><%
                        double preTaxPay = grossPay - pre;
                        out.println("$"+preTaxPay);
                        %></td>
                </tr>
                
                <tr>
                    <td>Tax Amount:</td>
                    <td><%
                        double taxAmount = 0;
                        if (grossPay >= 500)
                        {taxAmount = .22;
                        out.println("22%");
                        }
                        else
                        {taxAmount = .18;
                        out.println("18%");
                                }
                        %></td>
                </tr>
                    
                <tr>
                    <td>Post-tax Pay:</td>
                    <td><%
                        double postTaxPay1 = taxAmount + 1;
                        double postTaxPay2 = taxAmount * 2;
                        double postTaxPay3 = postTaxPay1 -postTaxPay2;
                        double postTaxPay = preTaxPay * postTaxPay3;
                        out.println("$"+postTaxPay);
                        %></td>
                </tr>
                
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td><%= "$" +post  %></td>
                </tr>
                
                <tr>
                    <td>Net Pay:</td>
                    <td><%
                        double netPay = postTaxPay - post;
                        out.println("$"+netPay);
                        
                        %></td>
                </tr>
                
                
                
                
        
        
    </body>
</html>
