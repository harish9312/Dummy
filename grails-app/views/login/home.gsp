<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Students</title>
	</head>
	<body>	
<br>
<fieldset>
<div class="container">
<font size="3">
<g:form action="update">
<fieldset>
<legend>Upadte Your Feedback</legend> 
<table class="col-lg-7" align="center">	
<tr><td>
<p>Course Name:      <g:textField required="true" class="form-control" value="${fbs.cn}" name="cn"/></p>
<p>Institute Name:   <g:textField required="true" class="form-control" value="${fbs.inm}" name="inm" /><br>    
<p>Trainer Name:     <g:textField required="true" class="form-control" value="${fbs.tn}" name="tn" /><br>   
<p>Course Duration:  <g:textField required="true" class="form-control" value="${fbs.dur}" name="dur" /><br>
<p>Total Fees:       <g:textField required="true" class="form-control" value="${fbs.tf}" name="tf" /><br>
<p>Feedback:         <g:textArea required="true" class="form-control" value="${fbs.fb}" name="fb" /><br>
                     <g:submitButton name="login" class="btn btn-lg btn-success btn-block" value="Update" />
</div>
    </fieldset>
</g:form>
</html>