<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<title>Document</title>
<style>
html, body {
	height: 100%
}

.divshadow {
	box-shadow: 4px 8px 20px 8px black;
	width: 60%;
}

.divstyle {
	background-color: #ECF0F1;
}

.submitbtn {
	background-color: #00D2D3;
	color: #ECF0F1;
}
</style>
</head>

<body>

	<div
		class="container-fluid text-center h-100 p-5 d-flex align-items-center justify-content-center">
		<div class=" border border-1 rounded-3 divshadow">
			
				<div
					class=" divstyle rounded-end-3 text-center d-flex flex-column justify-content-center align-items-center p-5">
					<p class="fs-2">Your Result</p>
					<p class="fs-5 fw-bold">Percentage :- ${percentage } %</p>
					<p class="fs-5 fw-bold">Grade :- ${grade}</p>
					<p class="fs-5 fw-bold">Total :- ${total} Marks</p>
					<p class="fs-6 fw-bold ">Are You Want To Calculate
						Percntage one more time ???</p>

					<a class="btn div-right py-2 rounded px-5 fw-bold border border-5 border-black" href="index.jsp">Yess</a>


				</div>
		
		</div>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>

</html>