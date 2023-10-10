 <?php include'inc/header.php';?>
 <?php include'lib/Database.php';?>
 <?php
	$db = new Database();
 
 ?>
 
 <?php 
	if(isset($_GET['edit_id'])){
		$id_edit = $_GET['edit_id'];
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
               <h2 class="salary-table">Update Teacher Salary Information</h2>
			   <?php
					if($_SERVER['REQUEST_METHOD']=="POST"){
						$T_id 		= mysqli_real_escape_string($db->link, $_POST['T_id']);
						$T_name 	= mysqli_real_escape_string($db->link, $_POST['T_name']);
						$T_title 	= mysqli_real_escape_string($db->link, $_POST['T_title']);
						$salary 	= mysqli_real_escape_string($db->link, $_POST['salary']);
						if(empty($T_id) || empty($T_name) || empty($T_title) || empty($salary)){
							echo "<span style='color:red; font-size:18px;'>Filed Must not be empty!!</span>";
						}
						elseif($salary < 0){
							echo "<span style='color:red; font-size:18px;'>Value must be gatter than 0!! Please input again.</span>";
						}
						else{
							$update_T = "UPDATE tbl_teacher
										SET
										teacher_id='$T_id',
										name='$T_name',
										Title='$T_title',
										salary='$salary'
										WHERE id = '$id_edit';
										
							";
							$data = $db->update($update_T);
							if($data==true){
								echo "<span style='color:green; font-size:18px;'>Update is Successfully!!</span>";
							}else{
								echo "<span style='color:red; font-size:18px;'>Update is Not Successfully!!</span>";
							}
						}
					}
			   ?>
			   
               <form action="" method="post">
                   <table class="tbl_slr">
                       <tr>
                           <th>Teacher Id</th>
                           <th>Name</th>
						   <th>Title</th>
                           <th>Salary</th>
                       </tr>
					<?php
			   
					$select_edit="SELECT * FROM tbl_teacher where id='$id_edit'";
					$select_result = $db->select($select_edit);
					if($select_result==true){
						while($edit_r = $select_result->fetch_assoc()){
							
			   
			   ?>   
					   <tr>
						   <td><input type="text" value="<?php echo $edit_r['teacher_id']?>" name="T_id" /></td>
                           <td><input type="text" value="<?php echo $edit_r['name']?>" name="T_name" ></td>
						   <td><input type="text" value="<?php echo $edit_r['Title']?>" name="T_title" ></td>
                           <td><input type="number" value="<?php echo $edit_r['salary']?>" name="salary" ></td>
                       </tr>
					<?php } }?>   
                       
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
	  
	 
    
    <!--end salary section-->
	<?php include'inc/slider.php';?>
    
    
    
    
    
    
    
    
    <script src="recorces/js/jquery-3.5.1.min.js" ></script>
    <script src="recorces/js/main.js"></script>
    <script src="recorces/js/owl.carousel.min.js" ></script>
    
</body>
</html>