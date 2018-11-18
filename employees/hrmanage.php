<?php 
require_once("header.php");

$employee = new Employee($connection);
$employeeResults = $employee->viewEmployees();
?>
<p style="color:red"><?php echo sessionMessages(); ?></p>
<a class="btn btn-success" class="fixed" href="addEmployee.php">Add New Employee</a>
<?php 
 while($employees = mysqli_fetch_assoc($employeeResults)) {
?>
<ul class="list-group">
  <li class="list-group-item d-flex justify-content-between align-items-center">
    <ul>
    <li>Name: <?php echo $employees["Name"];?></li>
    <li>Email: <?php echo $employees["Email"];?></li>
    <li>Mobile: <?php echo $employees["Mobile"];?></li>
    <li>HireDate: <?php echo $employees["HireDate"];?></li>
    </ul>
    <form method="POST" action="editEmployee.php">
    <input type="text" style="display:none;" name="name" value="<?php echo $employees["Name"];?>">
    <input type="email" style="display:none;" name="email" value="<?php echo $employees["Email"];?>"> 
    <input type="number" style="display:none;" name="mobile" value="<?php echo $employees["Mobile"];?>">
    <input type="date" style="display:none;" name="hire" value="<?php echo $employees["HireDate"];?>">
    <input type="submit" class="btn btn-primary" value="Edit"></button>
    </form>
    <form method="POST" action="deleteEmployee.php">
    <input type="email" style="display:none;" name="email" value="<?php echo $employees["Email"];?>"> 
    <input type="submit" class="btn btn-danger" name="delete" value="Delete"></button>
    </form>
    </li>
</ul>
<?php 
 }
require_once("dbconnectionclose.php");
?>