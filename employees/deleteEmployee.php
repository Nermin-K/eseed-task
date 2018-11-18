<?php
require_once("header.php");

$mail = $_POST["email"];

if(isset($_POST['delete']))
{
 $employee=new Employee($connection);
   	    $result=$employee->deleteEmployee($mail);
        if($result){
            $_SESSION["message"]= "Employee has been deleted successfully.";
           redirect_to("hrmanage.php");
        } else {
            $_SESSION["message"]= "error executing sql.";
           redirect_to("hrmanage.php");
        }  
} else {
      $_SESSION["message"]= "Employee email is missing";
           redirect_to("hrmanage.php");
  }

//require_once("dbconnectionclose.php");
?>