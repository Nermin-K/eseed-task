<?php
require_once("header.php");

$mail = $_POST["email"];
$pass = $_POST["password"];

if(!empty($_POST["email"]) && !empty($_POST["password"]))
{
    $employee = new Employee($connection);
$loginResult = $employee->checkLogin($mail, $pass);

   if($loginResult == 1){
         redirect_to("hrmanage.php");
   } else if($loginResult == -1) {
   	    $_SESSION["message"]= "Invalid Email or Password.";
           redirect_to("login.php");
   } else if($loginResult == -2) {
       $_SESSION["message"]= "Wrong Email or Password.";
           redirect_to("login.php");
   }
} else {
     $_SESSION['message']="Both Email and Password are required.";
    redirect_to("login.php");
}

?>