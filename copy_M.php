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
			   <form action="" method="post">
                   <table style="color:#555; font-size:20px;" class="ts_tbl">
                       <tr>
                           <th>Select Mounth</th>
                           <th>Action</th>
                        </tr>
					   <tr>
							<td>January</td>
							<td><a onclick="return confirm('Copy Just One Time')" href="copy_jan.php">Go</a> || <a href="#">Back</a></td>
					   </tr>
                        <tr>
							<td>February</td>
							<td><a onclick="return confirm('Copy Just One Time')" href="copy_Feb.php">Go</a> || <a href="salary.php">Back</a></td>
					   </tr>
					   <tr>
							<td>March</td>
							<td><a onclick="return confirm('Copy Just One Time')" href="copy_Mar.php">Go</a> || <a href="salary.php">Back</a></td>
					   </tr>
					   <tr>
							<td>April</td>
							<td><a onclick="return confirm('Copy Just One Time')" href="copy_April.php">Go</a> || <a href="salary.php">Back</a></td>
					   </tr>
					   <tr>
							<td>May</td>
							<td><a onclick="return confirm('Copy Just One Time')" href="copy_May.php">Go</a> || <a href="salary.php">Back</a></td>
					   </tr>
					   <tr>
							<td>June</td>
							<td><a onclick="return confirm('Copy Just One Time')" href="copy_June.php">Go</a> || <a href="salary.php">Back</a></td>
					   </tr>
					   <tr>
							<td>July</td>
							<td><a onclick="return confirm('Copy Just One Time')" href="copy_July.php">Go</a> || <a href="salary.php">Back</a></td>
					   </tr>
					   <tr>
							<td>August</td>
							<td><a onclick="return confirm('Copy Just One Time')" href="copy_August.php">Go</a> || <a href="salary.php">Back</a></td>
					   </tr>
					   <tr>
							<td>September</td>
							<td><a onclick="return confirm('Copy Just One Time')" href="copy_September.php">Go</a> || <a href="salary.php">Back</a></td>
					   </tr>
					   <tr>
							<td>October</td>
							<td><a onclick="return confirm('Copy Just One Time')" href="copy_October.php">Go</a> || <a href="salary.php">Back</a></td>
					   </tr>
					   <tr>
							<td>November</td>
							<td><a onclick="return confirm('Copy Just One Time')" href="copy_November.php">Go</a> || <a href="salary.php">Back</a></td>
					   </tr>
					   <tr>
							<<td>December</td>
							<td><a onclick="return confirm('Copy Just One Time')" href="copy_December.php">Go</a> || <a href="salary.php">Back</a></td>
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