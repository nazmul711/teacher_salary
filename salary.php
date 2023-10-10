 <?php include'inc/header.php';?>
 <?php include'inc/slider.php';?>
 <?php include'lib/Database.php';?>
 <?php
	$db = new Database();
 
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
                              <li><a class="subitem" href="T_new_list.php">Teacher List</a></li>
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
               <h2 class="salary-table">Salary-Table</h2>
               <form action="" method="post">
                   <table class="tbl_slr tbl_teacher addd-mounth">
                       <tr>
                           <th>Sl no</th>
                           <th>Mounth Name</th>
                           <th>Total Salary</th>
                           <th>Action</th>
                           
                       </tr>
					   <?php 
							$select_Y ="SELECT * FROM tbl_mount ORDER BY id";
							$select_data = $db->select($select_Y);
							if($select_data == true){
								$i = 0;
								while($select_Re = $select_data->fetch_assoc()){
								$i++;
						?>
                       <tr>
                           <td><?php echo $i; ?></td>
                           <td><?php echo $select_Re['name']; ?></td>
                           <td><input type="number" value="<?php echo $select_Re['teacher_salary']; ?>" /></td>
                           <td><a href="">Edit</a> || <a href="">Delete</a></td>
                       </tr>
					   <?php } }?>
					   
					   <tr>
							<td></td>
							<td>Total Salary =</td>
							<?php 
							$select_T ="SELECT * FROM tbl_mount ORDER BY id";
							$select_total = $db->select($select_T);
							if($select_total == true){
								$sum = 0;
								while($select_Re = $select_total->fetch_assoc()){
								$sum += $select_Re['teacher_salary'];
								}
							?>
							<td><input type="number" value="<?php echo $sum;?>" /></td>
							<?php }?>
							<td></td>
					   </tr>
							
                       
                       <tr>
                           <td></td>
                           <td></td>
                           <td></td>
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