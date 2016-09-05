<!DOCTYPE html>
<html>
	<head>
<meta name="layout" content="main"/>
			<title>Feedbacks</title>
	</head>
	<body>
<div class="container">
<p>Please<g:link controller="Login" action="index" id="1">Login Here</g:link> To Edit Your Feedback</p>
<br>
<font face="Comic Sans MS">
<table class="table table-stripped" width="1000" align="center">

<tr align="center">
<th>Course Name</th>
<th>Institute Name</th>
<th>Trainer Name</th>
<th>Duration</th>
<th>Total Fees</th>
<th>Feedback</th>
<th>Submitted By</th>
</tr>
</thead>
<g:each in="${feedbacks}" var="fb" status="i">
<tr>
<td>${fb.courseName}</td>
<td>${fb.instName}</td>
<td>${fb.trainerName}</td>
<td>${fb.courseDur}</td>
<td>${fb.totalFees}</td>
<td>${fb.feedback}</td>
<td>${fb.userName}</td>
</tr></td>    

        </g:each>
</table>
	</body>
</html>