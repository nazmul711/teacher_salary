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
				  if(isset($_GET['D_mounth'])){
						$del = $_GET['D_mounth'];
						$query_d = "DELETE FROM tbl_mount WHERE id = '$del'";
						$del_d = $db->deleted($query_d);
						if($del_d){
							echo "<span style='color:green; font-size:18px;'>Delete is Successfully!!!</span>";
						}else{
							echo "<span style='color:red; font-size:18px;'>Delete is Not Successfully!!!</span>";
						}
					}	
			   ?>
			   
               <form action="" method="post">
                   <table class="tbl_slr tbl_teacher">
                       <tr>
							<th>Mounth</th>
							<th>Action</th>
                       </tr>
					   <?php 
							$select_M = "SELECT * FROM tbl_mount ORDER BY id";
							$select_data = $db->select($select_M);
							if($select_data==true){
								while($select_R = $select_data->fetch_assoc()){
									
								
					   ?>
					   <tr>
							<td><?php echo $select_R['name'];?></td>
						    <td><a href="EditMounth.php?E_mounth=<?php echo $select_R['id'];?>">Edit</a> || <a onclick="return confirm('Are You Sure to Delete Data?????')" href="Edit_salarysheet.php?D_mounth=<?php echo $select_R['id'];?>">Delete</a></td>
                        </tr>
						<?php } }?>
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