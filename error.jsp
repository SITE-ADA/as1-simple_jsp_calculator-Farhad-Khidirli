<html>
	<head>
		<title>Assignment I - Simple Calculator | errorPage</title>
		<style>
			body {
			background: rgba(0, 128, 0, 0.3)
			}
		</style>
	</head>
		<%@ page isErrorPage = "true" %>  
	<body>
		  
		<h3>Sorry an exception occured!</h3>  
		  
		Exception is: <%= exception.getMessage() %>

	</body>
</html>