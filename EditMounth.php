 <?php include'inc/header.php';?>
 <?php include'lib/Database.php';?>
 <?php
	$db = new Database();
 
 ?>
 <?php 
	if(isset($_GET['E_mounth'])){
		$id = $_GET['E_mounth'];
	}
 ?>
    
	<section class="salary-section">
       <div class="slr_header">
           <h2>Teacher Salary Information</h2>
           <p class="smll-para">our hounarable teacher salary information</p>
       </div>
       <div class="postion_salay">
           <div class="sideber">
               <div class="mounth">
                   <ul class="main-list">
                      <li><a class="menuitem">Mounth</a>
                          <ul class="submenu">
                              <?php
							$query = "SELECT * FROM tbl_mount ORDER BY id";
							$query_data = $db->select($query);
							if($query_data==true){
								while($select_R = $query_data->fetch_assoc()){
							
						  ?>
                              <li><a class="subitem"  href="<?php echo $select_R['link'];?>"><?php echo $select_R['name'];?></a></li>
                               
						<?php } }?>	 
                          </ul>
                      </li>
                    </ul>
                    <ul class="main-list">
                      <li><a class="menuitem">Teachers</a>
                          <ul class="submenu">
                              <li><a class="subitem"  href="add_teacher.php">Add Teacher</a></li>
                              <li><a class="subitem" href="teacherlist.php">Teacher List</a></li>
							</ul>
                      </li>
                    </ul>
					<ul class="main-list">
                      <li><a class="menuitem">salary Sheet</a>
                          <ul class="submenu">
                              <li><a class="subitem"  href="salary.php">SalarySheet</a></li>
							  <li><a class="subitem"  href="add_new_mounth.php">Add salarySheet</a></li>
							  <li><a class="subitem"  href="Edit_salarysheet.php">Edit Salarysheet</a></li>
                              
							</ul>
                      </li>
                    </ul>
               </div>
           </div>
           <div class="maincontain">
               <div class="iqura">IKGHS Teacher payrull</div>
               <h2 class="salary-table">Add new mounth</h2>
			   <?php
					if($_SERVER['REQUEST_METHOD']=="POST"){
						$M_name 		= mysqli_real_escape_string($db->link, $_POST['M_name']);
						$L_mounth 	= mysqli_real_escape_string($db->link, $_POST['L_mounth']);
						$div = explode('.', $L_mounth);
						$link = current($div);
						if(empty($M_name) || empty($L_mounth)){
							echo "<span style='color:red; font-size:18px;'>Filed Must not be empty!!</span>";
						}
						elseif($M_name != $link){
							echo "<span style='color:red; font-size:18px;'>Select Same Mounth both field!!</span>";
						}
						else{
							$update_T = "UPDATE tbl_mount
										SET
										name = '$M_name'
										WHERE id = '$id';
							";
							$data = $db->update($update_T);
							if($data==true){
								echo "<span style='color:green; font-size:18px;'>Updated Successfully!!</span>";
							}else{
								echo "<span style='color:red; font-size:18px;'>Updated Not Successfully!!!!</span>";
							}
						}
					}
					/*<input type="text" placeholder="Type mounth name with .php extention" name="L_mounth" >*/
			   ?>
               <form action="" method="post">
                   <table class="addd-mounth">
                       <tr>
                           <th colspan="5">New Salary Table</th>
                       </tr>
					   <tr>
						   <td width="33%">Mounth Name</td>
						   <td width= "1%">:</td>
                           <td colspan="5" width="65%">
								<select name="M_name">
									<option selected></option>
									<option value="Junnuary">Junuary</option>
									<option value="February">February</option>
									<option value="March">March</option>
									<option value="April">April</option>
									<option value="May">May</option>
									<option value="June">June</option>
									<option value="July">Juny</option>
									<option value="August">August</option>
									<option value="September">September</option>
									<option value="October">October</option>
									<option value="November">November</option>
									<option value="December">December</option>
								</select>
						   </td>
                       </tr>
					   <tr>
						   <td width="33%">type_link</td>
						   <td width= "1%">:</td>
                           <td colspan="5" width="65%">
								<select name="L_mounth">
									<option selected></option>
									<option value="Junnuary.php">Junuary</option>
									<option value="February.php">February</option>
									<option value="March.php">March</option>
									<option value="April.php">April</option>
									<option value="May.php">May</option>
									<option value="June.php">June</option>
									<option value="July.php">Juny</option>
									<option value="August.php">August</option>
									<option value="September.php">September</option>
									<option value="October.php">October</option>
									<option value="November.php">November</option>
									<option value="December.php">December</option>
								</select>
						   </td>
                       </tr>
                        <tr>
                           <td></td><td></td><td></td>
                           <td><input type="submit" name="submit" value="submit" /></td>
                       </tr>
                   </table>
               </form>
           </div>
        </div>   
       <div class="slr_footer">
			<div class="slr-footer-icon">
            <i class="fas fa-phone-alt"></i>
            <i class="far fa-envelope"></i>
            <i class="fab fa-youtube size"></i>
            <i class="fab fa-twitter size"></i>
            <i class="fab fa-facebook-f size face"></i>
            <i class="fab fa-google-plus-g size goo"></i> 
        </div>
	   </div>
      </section>
	  
	 <?php include'inc/slider.php';?>
    
    <!--end salary section-->
    
    
    
    
    
    
    
    
    <script src="recorces/js/jquery-3.5.1.min.js" ></script>
    <script src="recorces/js/main.js"></script>
    <script src="recorces/js/owl.carousel.min.js" ></script>
    
</body>
</html>