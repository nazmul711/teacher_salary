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
							  <li><a class="subitem"  href="salary.php">SalarySheet</a></li>
                              <li><a class="subitem"  href="add_teacher.php">Add Teacher</a></li>
                              <li><a class="subitem" href="teacherlist.php">Teacher List</a></li>
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
               <h2 class="salary-table">Add new Teacher</h2>
			   <?php
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
							$insert_T = "INSERT INTO July (name, incre_Date, Orgin_Salary, incre_Yearly, Last_Y_increse, H_rent, Treatment, Vehicular, 2nd_shift_fee, incre_Honoraria, Festival_bonus, F_Found) 
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
                           <!--th>M_I_H</th-->
                           <th>F_B</th>
                           <!--th>T_Slr</th-->
                           <th>Fro_F</th>
                           <!--th>G_Slr</th-->
                           
						   
                       </tr>
					   <tr>
						   
                           <td><input type="text" 	placeholder="name" 				name="name"  			value="<?php if(isset($_POST['name'])){ echo $_POST['name'];}?>"	></td>
						   <td><input type="date" 	placeholder="incre_Date" 		name="incre_Date" 		value="<?php if(isset($_POST['incre_Date'])){ echo $_POST['incre_Date'];}?>"	></td>
                           <td><input type="number" placeholder="Orgin_Salary" 		name="Orgin_Salary" 	value="<?php if(isset($_POST['Orgin_Salary'])){ echo $_POST['Orgin_Salary'];}?>"	></td>
						   <td><input type="number" placeholder="incre_Yearly" 		name="incre_Yearly" 	value="<?php if(isset($_POST['incre_Yearly'])){ echo $_POST['incre_Yearly'];}?>"	/></td>
                           <td><input type="number" placeholder="Last_Y_increse" 	name="Last_Y_increse"	value="<?php if(isset($_POST['Last_Y_increse'])){ echo $_POST['Last_Y_increse'];}?>"	 ></td>
						   <!--td><input type="number" placeholder="Total_increse" 	name="Total_increse" 	value="<?php //if(isset($_POST['Total_increse'])){ echo $_POST['Total_increse'];}?>"	></td-->
                           <td><input type="number" placeholder="H_rent" 			name="H_rent" 			value="<?php if(isset($_POST['H_rent'])){ echo $_POST['H_rent'];}?>"	></td>
						   
						   <td><input type="number" placeholder="Treatment" 		name="Treatment" 		value="<?php if(isset($_POST['Treatment'])){ echo $_POST['Treatment'];}?>"	/></td>
                           <td><input type="number" placeholder="Vehicular" 		name="Vehicular" 		value="<?php if(isset($_POST['Vehicular'])){ echo $_POST['Vehicular'];}?>"	></td>
						   <td><input type="number" placeholder="2nd_shift_fee" 	name="2nd_shift_fee" 	value="<?php if(isset($_POST['2nd_shift_fee'])){ echo $_POST['2nd_shift_fee'];}?>"	></td>
                           <td><input type="number" placeholder="incre_Honoraria" 	name="incre_Honoraria" 	value="<?php if(isset($_POST['incre_Honoraria'])){ echo $_POST['incre_Honoraria'];}?>"	></td>
						   <!--td><input type="number" placeholder="total_Honararia" 	name="total_Honararia" 	value="<?php //if(isset($_POST['total_Honararia'])){ echo $_POST['total_Honararia'];}?>"	/></td-->
						   
                           <td><input type="number" placeholder="Festival_bonus" 	name="Festival_bonus" 	value="<?php if(isset($_POST['Festival_bonus'])){ echo $_POST['Festival_bonus'];}?>"	></td>
						   <!--td><input type="number" placeholder="Total_Salary" 		name="Total_Salary" 	value="<?php //if(isset($_POST['Total_Salary'])){ echo $_POST['Total_Salary'];}?>"	></td-->
                           <td><input type="number" placeholder="F_Found" 			name="F_Found" 			value="<?php if(isset($_POST['F_Found'])){ echo $_POST['F_Found'];}?>"	></td>
						   <!--td><input type="number" placeholder="Given_salary" 		name="Given_salary" 	value="<?php //if(isset($_POST['Given_salary'])){ echo $_POST['Given_salary'];}?>"	></td-->
						   
                       </tr>
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