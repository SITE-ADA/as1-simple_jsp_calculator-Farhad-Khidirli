<%@ page import = "java.io.*,java.util.*" %>

<html>
	<head>
		<title>Assignment I - Simple Calculator | userData</title>
		<style> body{background: rgba(0, 128, 0, 0.3)} </style> 
	</head>

	<body>
		<center>
			<h2>Dear Friend, your information is right here</h2>
         
			<table width = "60%" border = "1" align = "center">
			<tr bgcolor = "#949494">
				<th>Header Name</th>
				<th>Header Value</th>
            </tr>
            <%
				Enumeration headerNames = request.getHeaderNames();
				while(headerNames.hasMoreElements()) {
					String paramName = (String)headerNames.nextElement();
					out.print("<tr><td>" + paramName + "</td>\n");
					String paramValue = request.getHeader(paramName);
					out.println("<td>" + paramValue + "</td></tr>\n");
               }
            %>
			</table>
		</center>
    
	</body>
</html>