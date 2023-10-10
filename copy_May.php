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
               <h2 class="salary-table">Salary-Table</h2>
			   <?php
			   /*
					if($_SERVER['REQUEST_METHOD']=="POST"){
						$name 				= mysqli_real_escape_string($db->link, $_POST['name']);
						$incre_Date 		= mysqli_real_escape_string($db->link, $_POST['incre_Date']);
						$Orgin_Salary 		= mysqli_real_escape_string($db->link, $_POST['Orgin_Salary']);
						$incre_Yearly 		= mysqli_real_escape_string($db->link, $_POST['incre_Yearly']);
						$Last_Y_increse 	= mysqli_real_escape_string($db->link, $_POST['Last_Y_increse']);
						//Total_increse	 	= mysqli_real_escape_string($db->link, $_POST['Total_increse']);
						
						$H_rent			 	= mysqli_real_escape_string($db->link, $_POST['H_rent']);
						$Treatment 			= mysqli_real_escape_string($db->link, $_POST['Treatment']);
						$Vehicular 			= mysqli_real_escape_string($db->link, $_POST['Vehicular']);
						$two_shift_fee 		= mysqli_real_escape_string($db->link, $_POST['2nd_shift_fee']);
						$incre_Honoraria	= mysqli_real_escape_string($db->link, $_POST['incre_Honoraria']);
						//$total_Honararia	= mysqli_real_escape_string($db->link, $_POST['total_Honararia']);
						
						$Festival_bonus 	= mysqli_real_escape_string($db->link, $_POST['Festival_bonus']);
						//$Total_Salary 		= mysqli_real_escape_string($db->link, $_POST['Total_Salary']);
						$F_Found 		  	= mysqli_real_escape_string($db->link, $_POST['F_Found']);
						//$Given_salary 		= mysqli_real_escape_string($db->link, $_POST['Given_salary']);
						
						
						if(empty($name) || empty($incre_Date) || empty($Orgin_Salary) || empty($incre_Yearly) || empty($Last_Y_increse) || 
						empty($H_rent) || empty($Treatment) || empty($Vehicular) || 
						 empty($F_Found)){
							echo "<span style='color:red; font-size:18px;'>Filed Must not be empty!!</span>";
						}else{
							$insert_T = "INSERT INTO january (name, incre_Date, Orgin_Salary, incre_Yearly, Last_Y_increse, H_rent, Treatment, Vehicular, 2nd_shift_fee, incre_Honoraria, Festival_bonus, F_Found) 
							VALUES
							('$name', '$incre_Date', '$Orgin_Salary', '$incre_Yearly', '$Last_Y_increse','$H_rent', '$Treatment', 
							'$Vehicular', '$two_shift_fee', '$incre_Honoraria', '$Festival_bonus', '$F_Found')";
							$data = $db->insert($insert_T);
							if($data==true){
								echo "<span style='color:green; font-size:18px;'>Inserted Successfully!!</span>";
							}else{
								echo "<span style='color:red; font-size:18px;'>Inserted Not Successfully!!!!</span>";
							}
						}
					}
					*/
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
						$query = "INSERT INTO May (name, incre_Date, Orgin_Salary, incre_Yearly, Last_Y_increse, H_rent, Treatment, Vehicular, 2nd_shift_fee, incre_Honoraria, Festival_bonus, F_Found) SELECT name, incre_Date, Orgin_Salary, incre_Yearly, Last_Y_increse, H_rent, Treatment, Vehicular, 2nd_shift_fee, incre_Honoraria, Festival_bonus, F_Found FROM April";
						$query_data = $db->insert($query);
						if($query_data = true){
							echo "<span style='color:green; font-size:18px;'>Copy is Successfully!!</span>";
						}
						$query_s = "select * from march ORDER BY id";
						$query_d = $db->select($query_s);
						if($query_d==true){
							$x = 0;
							$i;
							while($query_r = $query_d->fetch_assoc()){
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
																		$UP = "UPDATE April SET Total_increse = (incre_Yearly + Last_Y_increse)"; 
																		$UP_R = $db->update($UP); 
																		echo $query_r['Total_increse'];
						  
																		?>" ></td>
						   
						   
                           <td><input type="number" name="T_S_I" value="<?php echo $query_r['H_rent'];?>" ></td>
                           <td><input type="number" name="T_S_I" value="<?php echo $query_r['Treatment'];?>" ></td>
						   <td><input type="number" name="T_S_I" value="<?php echo $query_r['Vehicular'];?>" ></td>
						   <td><input type="number" name="T_S_I" value="<?php echo $query_r['2nd_shift_fee'];?>" ></td>
                           <td><input type="number" name="T_S_I" value="<?php echo $query_r['incre_Honoraria'];?>" ></td>
						   <td><input type="number" name="T_S_I" value="<?php 
																			$UP = "UPDATE April SET total_Honararia = (2nd_shift_fee + incre_Honoraria)"; 
																			$UP_R = $db->update($UP); 
																			echo $query_r['total_Honararia'];?>" ></td>
                           <!--td><input type="number" name="T_S_I" value="<?php// echo $query_r['total_Honararia'];?>" ></td-->
                           <td><input type="number" name="T_S_I" value="<?php echo $query_r['Festival_bonus'];?>" ></td>
						   <td><input type="number" name="T_S_I" value="<?php 
																		$UP = "UPDATE April SET Total_Salary = (Orgin_Salary + Total_increse + H_rent + Treatment + Vehicular +total_Honararia + Festival_bonus)"; 
																		$UP_R = $db->update($UP); 
																		echo $query_r['Total_Salary'];?>" ></td>
                           <td><input type="number" name="T_S_I" value="<?php echo $query_r['F_Found'];?>" ></td>
						   <td><input type="number" name="T_S_I" value="<?php 
																			$UP = "UPDATE April SET Given_salary = (Total_Salary - F_Found)"; 
																			$UP_R = $db->update($UP);
																			echo $query_r['Given_salary'];?>" ></td>
						   <td><a href="#">Report</a><br><a href="T_Edit.php?edit_T=<?php echo $query_r['id'];?>">Edit</a></td>
                       </tr>
					   <?php } }?>
					   
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