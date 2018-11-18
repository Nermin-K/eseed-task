<?php 
require_once("header.php");
?>
<p style="color:red"><?php echo sessionMessages(); ?></p>
<form action="edit.php" method="POST">
<div class="form-group">
    <label>Name</label>
    <input type="text" class="form-control" name="name" placeholder="<?php echo $_POST["name"];?>" value="<?php echo $_POST["name"];?>"> 
    </div>
  <div class="form-group">
    <label>Email</label>
    <input type="email" class="form-control" name="email" placeholder="<?php echo $_POST["email"];?>" value="<?php echo $_POST["email"];?>" readonly>
  </div>
  <div class="form-group">
    <label>Mobile</label>
    <input type="number" class="form-control" name="mobile" placeholder="<?php echo $_POST["mobile"];?>" value="<?php echo $_POST["mobile"];?>">
  </div>
  <div class="form-group">
    <label>Hire Date</label>
    <input type="date" class="form-control" name="hiredate" placeholder="<?php echo $_POST["hire"];?>" value="<?php echo $_POST["hire"];?>">
  </div>
  <button type="submit" class="btn btn-primary">Edit</button>
</form>