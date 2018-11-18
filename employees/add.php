<?php
require_once("header.php");

$name = $_POST["name"];
$mail = $_POST["email"];
$mob = $_POST["mobile"];
$hire = $_POST["hiredate"];


if(!empty($name) && !empty($mail) && !empty($mob) && !empty($hire))
{
    $employee = new Employee($connection);
$result = $employee->addEmployee($name, $mail, $mob, $hire);

   if($result == 1){
       $_SESSION["message"]= "Employee has been added successfully.";
         redirect_to("hrmanage.php");
   } else if($result == -1) {
   	    $_SESSION["message"]= "error executing sql";
           redirect_to("addEmployee.php");
   } 
} else {
     $_SESSION['message']="make sure that you have entered all data.";
    redirect_to("addEmployee.php");
}

?>