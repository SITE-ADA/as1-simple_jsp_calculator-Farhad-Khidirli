<html>
	<head>
      <title>Assignment I - Simple Calculator | Result Page</title>
	  <style> body {background: linear-gradient(to right, lightgreen, lightblue)} </style>
	</head>
	<%@ page errorPage = "error.jsp" %>
	<body>
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
			<h3 align = "center">Dear Friend, thank you for using this calculator!</h3>
		<%
			if(check)
			{
				Double result = new Double(sum);
				out.println("<b>Answer is: </b>" + result.toString());
			}
		%>
			<br><br><button> <a href="userData.jsp" style="text-decoration:none;">Please, click on me to see your cookies details </button>
	</body>
</html>