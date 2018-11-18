<?php 

class Employee {

private $connection;
    function __construct ($c){
        $this->connection=$c;
    }

    //view employees 
public function viewEmployees(){
    $sql = "SELECT * FROM employee WHERE ID!='4'";
    $result = mysqli_query($this->connection, $sql);
    if($result) {
        return $result;
    } else {
        return -1;
    }
    
}

//get employee
public function getEmployeeByEmail($email){
    $sql = "SELECT * FROM eseed WHERE 'Email'=$email";
    $result = mysqli_query($this->connection, $sql);
    if($result->num_rows > 0){
        return $result;
    } else {
        return -1;
    }
}
//add employees
public function addEmployee($name, $email, $mobile, $hireDate){
    //escape strings to insert safely in database
        $n=mysqli_real_escape_string($this->connection ,$name);
        $e=mysqli_real_escape_string($this->connection ,$email);
        $m=mysqli_real_escape_string($this->connection, $mobile);
        $h =mysqli_real_escape_string($this->connection , $hireDate);

        $sql = "INSERT INTO employee (Name , Email , Mobile , HireDate) ".
            "VALUES ('{$n}' , '{$e}' , '{$m}' , '{$h}')";
        $result = mysqli_query($this->connection, $sql);
        if($result){
            return 1;
        } else {
            return -1;
        }    

}
//update employee
public function updateEmployee(/*$id, */$name, $email, $mobile, $hireDate){
    //escape strings to insert safely in database
        $n=mysqli_real_escape_string($this->connection ,$name);
        $e=mysqli_real_escape_string($this->connection ,$email);
        $m=mysqli_real_escape_string($this->connection, $mobile);
        $h =mysqli_real_escape_string($this->connection , $hireDate);

       // $sql = "UPDATE employee SET Name='$n', Email='$e', Mobile='$m', HireDate='$h' WHERE ID='$id'";
       $sql = "UPDATE employee SET Name='$n', Mobile='$m', HireDate='$h' WHERE Email='$e'";
        $result = mysqli_query($this->connection, $sql);
        if($result){
            return 1;
        } else {
            return -1;
        }    

}

//delete employee
public function deleteEmployee($mail){
    $sql = "DELETE FROM employee WHERE Email='$mail'";
        $result = mysqli_query($this->connection, $sql);
        if($result){
            return 1;
        } else {
            return -1;
        }  
}

public function checkLogin($mail, $pass){
    $m=mysqli_real_escape_string($this->connection,$mail);
    $p=mysqli_real_escape_string($this->connection ,$pass);

 $sql = "SELECT * FROM hremployees WHERE Email='$m' AND Password='$p'";
        $result = mysqli_query($this->connection, $sql);
        if(!$result){
            return -1;
        } else {
            if(mysqli_num_rows($result) == 1){
                    return 1;
                }
                else return -2;
        }     
}
}

function redirect_to ($newLocation){
    header ("Location: ". $newLocation);
    exit;
}

?>