 <?php include'inc/header.php';?>
 <?php include'lib/Database.php';?>
 <?php
	$db = new Database();
	if(isset($_GET['edit_T'])){
		$id = $_GET['edit_T'];
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
							  <li><a class="subitem"  href="salary.php">SalarySheet</a></li>
                              <li><a class="subitem"  href="add_teacher.php">Add Teacher</a></li>
                              <li><a class="subitem" href="T_new_list.php">Teacher List</a></li>
							</ul>
                      </li>
                    </ul>
					<ul class="main-list">
                      <li><a class="menuitem">salary Sheet</a>
                          <ul class="submenu">
                              <li><a class="subitem"  href="add_new_mounth.php">Add salarySheet</a></li>
							  <li><a class="subitem"  href="Edit_salarysheet.php">Edit Salarysheet</a></li>
                              
							</ul>
                      </li>
                    </ul>
               </div>
           </div>
           <div class="maincontain">
               <div class="iqura">IKGHS Teacher payrull</div>
               <h2 class="salary-table">Salary Edit March</h2>
			   <?php
					if($_SERVER['REQUEST_METHOD']=="POST"){
						$name 				= mysqli_real_escape_string($db->link, $_POST['name']);
						$incre_Date 		= mysqli_real_escape_string($db->link, $_POST['incre_Date']);
						$Orgin_Salary 		= mysqli_real_escape_string($db->link, $_POST['Orgin_Salary']);
						$incre_Yearly 		= mysqli_real_escape_string($db->link, $_POST['incre_Yearly']);
						$Last_Y_increse 	= mysqli_real_escape_string($db->link, $_POST['Last_Y_increse']);
						//$Total_increse	 	= mysqli_real_escape_string($db->link, $_POST['Total_increse']);
						
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
						
						
						if(empty($name) || empty($incre_Date) || empty($Orgin_Salary) || empty($incre_Yearly) || empty($H_rent) || empty($Treatment) || empty($Vehicular) || empty($F_Found)){
							echo "<span style='color:red; font-size:18px;'>Filed Must not be empty!!</span>";
						}
						else{
							$update_T = "UPDATE march
										SET
										name = '$name',
										incre_Date 		= '$incre_Date',
										orgin_Salary 	= '$Orgin_Salary',
										incre_Yearly 	= '$incre_Yearly',
										last_Y_increse 	= '$Last_Y_increse',
										
										H_rent 			= '$H_rent', 
										Treatment 		= '$Treatment',
										Vehicular 		= '$Vehicular',
										2nd_shift_fee 	= '$two_shift_fee',
										incre_Honoraria = '$incre_Honoraria',
										
										Festival_bonus 	= '$Festival_bonus',
										
										F_Found 		= '$F_Found'
										
										WHERE id  		= '$id'
										";
									$update_data = $db->update($update_T);
							if($update_data==true){
								echo "<span style='color:green; font-size:18px;'>Updated Successfully!!</span>";
							}else{
								echo "<span style='color:red; font-size:18px;'>Updated Not Successfully!!!!</span>";
							}
						}
					}
			   ?>
			 
               <form action="" method="post">
                   <table class="ts_tbl">
                       <tr>
                           
                           <th>T_name</th>
                           <th class="name">D_I_S</th>
                           <th class="date">M_Slr</th>
                           <th>Y_I_S</th>
                           <th>L_Y_I</th>
                           <!--th>T_I_S</th-->
						   <th>H_R</th>
                           <th>Trtmnt</th>
                           <th>V</th>
                           <th>2nd_S</th>
                           <th>I_H</th>
                           <!--th>T_I_H</th-->
                           <th>F_B</th>
                           <!--th>T_Slr</th-->
                           <th>Fro_F</th>
                           <!--th>G_Slr</th-->
                           
						   
                       </tr>
					   <?php 
						$query_s = "SELECT * FROM march WHERE id = '$id'";
						$query_d = $db->select($query_s);
						if($query_d == true){
							while($query_r = $query_d->fetch_assoc()){
								
							
					   ?>
					   <tr>
						   
                           <td><input type="text" name="name" value="<?php echo $query_r['name'];?>" ></td>
						   <td><input type="date" name="incre_Date" value="<?php echo $query_r['incre_Date'];?>" ></td>
						   <td><input type="number" name="Orgin_Salary" value="<?php echo $query_r['Orgin_Salary'];?>" ></td>
						   <td><input type="number" name="incre_Yearly" value="<?php echo $query_r['incre_Yearly'];?>" /></td>
                           <td><input type="number" name="Last_Y_increse" value="<?php echo $query_r['Last_Y_increse'];?>" ></td>
						   <!--td><input type="number" name="Total_increse" value="<?php //echo $query_r['Total_increse'];?>" ></td-->
                           <td><input type="number" name="H_rent" value="<?php echo $query_r['H_rent'];?>" ></td>
						   <td><input type="number" name="Treatment" value="<?php echo $query_r['Treatment'];?>" /></td>
                           <td><input type="number" name="Vehicular" value="<?php echo $query_r['Vehicular'];?>"></td>
						   <td><input type="number" name="2nd_shift_fee" value="<?php echo $query_r['2nd_shift_fee'];?>"></td>
                           <td><input type="number" name="incre_Honoraria" value="<?php echo $query_r['incre_Honoraria'];?>"></td>
						   <!--td><input type="number" name="total_Honararia" value="<?php //echo $query_r['total_Honararia'];?>" /></td-->
						   <td><input type="number" name="Festival_bonus" value="<?php echo $query_r['Festival_bonus'];?>"></td>
						   <!--td><input type="number" name="Total_Salary" value="<?php //echo $query_r['Total_Salary'];?>"></td-->
                           <td><input type="number" name="F_Found"  value="<?php echo $query_r['F_Found'];?>"></td>
						   <!--td><input type="number" name="Given_salary" value="<?php //echo $query_r['Given_salary'];?>" ></td-->
						   
                       </tr>
					   <?php } }?>
                        <tr>
                           <td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
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