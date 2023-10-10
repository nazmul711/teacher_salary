 <?php include'inc/header.php';?>
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
                              <li><a class="subitem" href="">Teacher List</a></li>
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
               <h2 class="salary-table">August-SalarySheet</h2>
			   <?php 
				if($_SERVER['REQUEST_METHOD']=="POST"){
					
					
				}
				
			   ?>
				<form action="" method="post">
				<table class="ts_tbl">
                       <tr>
						   
						   <th>T_name</th>
                           <th class="name">M_slr</th>
                           <th class="date">D_I_S</th>
                           <th>Y_I_S</th>
                           <th>L_Y_I</th>
                           <th>T_I_S</th>
						   <th>H_R</th>
                           <th>Trtmnt</th>
                           <th>V</th>
                           <th>2nd_S</th>
                           <th>I_H</th>
                           <th>T_I_H</th>
                           <th>F_B</th>
                           <th>T_Slr</th>
                           <th>Fro_F</th>
                           <th>G_Slr</th>
                           <th>Action</th>
                       </tr>
					   <?php 
						$query = "SELECT * FROM august ORDER BY id";
						$query_data = $db->select($query);
						if($query_data==true){
							$x = 0;
							$i;
							while($query_r = $query_data->fetch_assoc()){
								$x = $query_r['incre_Yearly'] + $query_r['Last_Y_increse'];
								$y = $query_r['2nd_shift_fee'] + $query_r['incre_Honoraria'];
							
					   ?>
                       <tr>
					
                           <td><input type="text" 	name="name" value="<?php echo $query_r['name'];?>" ></td>
                           <td><input type="number" name="M_slr" value="<?php echo $query_r['Orgin_Salary'];?>"  ></td>
                           <td><input type="date" 	name="date" value="<?php echo $query_r['incre_Date'];?>"  /></td>
						   <td><input type="number" name="Y_I_slr" value="<?php echo $query_r['incre_Yearly'];?>" ></td>
						   <td><input type="number" name="L_Y_I" value="<?php echo $query_r['Last_Y_increse'];?>" ></td>
                          <!-- <td><input type="number" name="T_S_I" value="<?php //echo $query_r['Total_increse'];?>" ></td> -->
						  <td><input type="number" name="T_S_I" value="<?php
																		$UP = "UPDATE august SET Total_increse = (incre_Yearly + Last_Y_increse)"; 
																		$UP_R = $db->update($UP); 
																		echo $query_r['Total_increse'];
						  
																		?>" ></td>
						   
						   
                           <td><input type="number" name="T_S_I" value="<?php echo $query_r['H_rent'];?>" ></td>
                           <td><input type="number" name="T_S_I" value="<?php echo $query_r['Treatment'];?>" ></td>
						   <td><input type="number" name="T_S_I" value="<?php echo $query_r['Vehicular'];?>" ></td>
						   <td><input type="number" name="T_S_I" value="<?php echo $query_r['2nd_shift_fee'];?>" ></td>
                           <td><input type="number" name="T_S_I" value="<?php echo $query_r['incre_Honoraria'];?>" ></td>
						   <td><input type="number" name="T_S_I" value="<?php 
																			$UP = "UPDATE august SET total_Honararia = (2nd_shift_fee + incre_Honoraria)"; 
																			$UP_R = $db->update($UP); 
																			echo $query_r['total_Honararia'];?>" ></td>
                           <!--td><input type="number" name="T_S_I" value="<?php// echo $query_r['total_Honararia'];?>" ></td-->
                           <td><input type="number" name="T_S_I" value="<?php echo $query_r['Festival_bonus'];?>" ></td>
						   <td><input type="number" name="T_S_I" value="<?php 
																		$UP = "UPDATE august SET Total_Salary = (Orgin_Salary + Total_increse + H_rent + Treatment + Vehicular +total_Honararia + Festival_bonus)"; 
																		$UP_R = $db->update($UP); 
																		echo $query_r['Total_Salary'];?>" ></td>
                           <td><input type="number" name="T_S_I" value="<?php echo $query_r['F_Found'];?>" ></td>
						   <td><input type="number" name="T_S_I" value="<?php 
																			$UP = "UPDATE august SET Given_salary = (Total_Salary - F_Found)"; 
																			$UP_R = $db->update($UP);
																			echo $query_r['Given_salary'];?>" ></td>
						   <td><a href="#">Report</a><br><a href="T_Edit_August.php?edit_T=<?php echo $query_r['id'];?>">Edit</a></td>
                       </tr>
					   <?php } }?>
					   
					   <tr class="tolal_row">
					   <?php
						$query_t = "select Given_salary from august";
						$total_d = $db->select($query_t);
						if($total_d){
							$sum = 0;
							while($total_r = $total_d->fetch_assoc()){
								$sum = $sum+$total_r['Given_salary'];
							}
						}
					   ?>
							<td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>Total</td>
							<td><input type = "number" name="total" value="<?php echo $sum; ?>"></td>
					   </tr>
					   <?php 
							$collect = "UPDATE tbl_mount
										SET 
										teacher_salary = '$sum'
										where name = 'august'
										";
								$collect_r = $db->update($collect);
								if($collect_r){
									$msg = "Salary is collected";
								}else{
									$msg = "Salary is Not collected";
								}
						
					   ?>
                      </table>
					 </form>
					  <a class="gohome" href="salary.php">Go home</a>
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