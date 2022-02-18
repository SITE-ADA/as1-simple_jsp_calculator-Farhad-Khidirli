<html>
	<head>
      <title>Assignment I - Simple Calculator | Result Page</title>
	  <style> body{background: rgba(0, 128, 0, 0.3)} </style>
	</head>
	<%@ page errorPage = "error.jsp" %>
	<body>
		<ul>
			<li><p>First variable is:<%= request.getParameter("first_variable")%></p></li>
			<li><p>Second variable is: <%= request.getParameter("second_variable")%></p></li>
			<li><p>Operator is: <%= request.getParameter("oper")%></p></li>
		</ul>
		
		<% 
			double var1 = Double.parseDouble(request.getParameter("first_variable"));
			double var2 = Double.parseDouble(request.getParameter("second_variable"));
			
			String op = request.getParameter("oper");
			double sum = 0;
			boolean check = true;
			// try{
				switch(op){
				case "+":
					sum = var1 + var2;
					break;
				case "-":
					sum = var1 - var2;
					break;
				case "/":
					sum = var1 / var2;
					break;
				case "*":
					sum = var1 * var2;
					break;
				default:
					out.println("Something went wrong, please choose correct operator.");
					check = false;
					break;
				}	
		//	} catch (Exception e) {
		//		out.println("Occured exception: " + e.getMessage());
		//		check = false; }
		%>
		<br>
		<%
			if(check)
			{
				Double result = new Double(sum);
				out.println("Answer is: " + result.toString());
			}
		%>
	</body>
</html>