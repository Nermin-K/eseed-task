<?php 
require_once("header.php");
?>
<p style="color:red"><?php echo sessionMessages(); ?></p>
<form action="loginValidation.php" method="POST">
  EMail:<br>
  <input type="email" name="email" placeholder="Email" require>
  <br>
  Password:<br>
  <input type="password" name="password" placeholder="Password" require>
  <br><br>
  <input type="submit" value="Login">
</form> 
<?php
require_once("dbconnectionclose.php");
?>