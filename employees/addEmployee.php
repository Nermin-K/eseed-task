<?php 
require_once("header.php");

?>
<p style="color:red"><?php echo sessionMessages(); ?></p>
<form action="add.php" method="POST">
<div class="form-group">
    <label>Name</label>
    <input type="text" class="form-control" name="name" placeholder="Enter Name" required> </div>
  <div class="form-group">
    <label>Email</label>
    <input type="email" class="form-control" name="email" placeholder="Enter Email" required>
  </div>
  <div class="form-group">
    <label>Mobile</label>
    <input type="number" class="form-control" name="mobile" placeholder="Enter Mobile" required>
  </div>
  <div class="form-group">
    <label>Hire Date</label>
    <input type="date" class="form-control" name="hiredate" required>
  </div>
  <button type="submit" class="btn btn-primary">Add</button>
</form>