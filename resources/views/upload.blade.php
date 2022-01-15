<!DOCTYPE html>
<html>
<head>
<title>Student Management | Add</title>
</head>
<body>
@if (session('status'))
<div class="alert alert-success" role="alert">
	<button type="button" class="close" data-dismiss="alert">×</button>
	{{ session('status') }}
</div>
@elseif(session('failed'))
<div class="alert alert-danger" role="alert">
	<button type="button" class="close" data-dismiss="alert">×</button>
	{{ session('failed') }}
</div>
@endif
<form action = "/insert" method = "post">
	<input type = "hidden" name = "_token" value = "<?php echo csrf_token(); ?>">
	<table>
	<tr>
	<td>item</td>
	<td><input type='text' name='item' /></td>
	<tr>
	<td>link</td>
	<td><input type="text" name='link'/></td>
	</tr>
    <tr>
	<td>details</td>
	<td><input type="text" name='details'/></td>
	</tr>
	
	<td colspan = '2'>
	<input type = 'submit' value = "Add student"/>
	</td>
	</tr>
	</table>
</form>
</body>
</html>