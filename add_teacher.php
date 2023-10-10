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
							$insert_T = "INSERT INTO t_tbl_salary (name, incre_Date, Orgin_Salary, incre_Yearly, Last_Y_increse, H_rent, Treatment, Vehicular, 2nd_shift_fee, incre_Honoraria, Festival_bonus, F_Found) 
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
                   <table style="color:#555; font-size:20px;" class="ts_tbl">
                       <tr>
                           <th>Select Mounth</th>
                           <th>Action</th>
                        </tr>
					   <tr>
							<td>Junuary</td>
							<td><a href="add_teacher_Jan.php">Go</a> || <a href="salary.php">Back</a></td>
					   </tr>
                        <tr>
							<td>February</td>
							<td><a href="add_teacher_Feb.php">Go</a> || <a href="salary.php">Back</a></td>
					   </tr>
					   <tr>
							<td>March</td>
							<td><a href="add_teacher_Mar.php">Go</a> || <a href="salary.php">Back</a></td>
					   </tr>
					   <tr>
							<td>April</td>
							<td><a href="add_teacher_April.php">Go</a> || <a href="salary.php">Back</a></td>
					   </tr>
					   <tr>
							<td>May</td>
							<td><a href="add_teacher_May.php">Go</a> || <a href="salary.php">Back</a></td>
					   </tr>
					   <tr>
							<td>June</td>
							<td><a href="add_teacher_June.php">Go</a> || <a href="salary.php">Back</a></td>
					   </tr>
					   <tr>
							<td>July</td>
							<td><a href="add_teacher_July.php">Go</a> || <a href="salary.php">Back</a></td>
					   </tr>
					   <tr>
							<td>August</td>
							<td><a href="add_teacher_August.php">Go</a> || <a href="salary.php">Back</a></td>
					   </tr>
					   <tr>
							<td>September</td>
							<td><a href="add_teacher_September.php">Go</a> || <a href="salary.php">Back</a></td>
					   </tr>
					   <tr>
							<td>October</td>
							<td><a href="add_teacher_October.php">Go</a> || <a href="salary.php">Back</a></td>
					   </tr>
					   <tr>
							<td>November</td>
							<td><a href="add_teacher_November.php">Go</a> || <a href="salary.php">Back</a></td>
					   </tr>
					   <tr>
							<td>December</td>
							<td><a href="add_teacher_December.php">Go</a> || <a href="salary.php">Back</a></td>
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