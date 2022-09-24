<?php
include_once "../includes/common.php";

// config
include_once "../includes/configuration.php";
$current_year = $_SESSION['CurrentYear'];
$current_term = $_SESSION['CurrentTerm'];

extract($_POST);

if(isset($_POST["staff_post_id"]))
{
    $staff_post_id = $_POST["staff_post_id"];

    $getStaff = "SELECT * FROM staff WHERE staff_status = '1' WHERE staff_id = :staff_id LIMIT 1";
    $dbh_getStaff = $dbh->prepare($getStaff); $dbh_getStaff->execute();
    $dbh_getStaff->bindParam(":staff_id", $staff_post_id);
    while ($staffObj = $dbh_getStaff->fetch(PDO::FETCH_OBJ)) 
    {
        echo "Name Url: main?page=view_staff&id='.EncoderToken($staffObj->staff_id).'";
        echo "Name: ".$staffObj->staff_fname. ' '.$staffObj->staff_lname.' '.$staffObj->staff_mi;
        echo "Email: ".$staffObj->staff_email;
        echo "Mobile: ".$staffObj->staff_mobile;
        echo "Image: SITEURL../../pictures/".$staffObj->staff_image

        $getStdQuery = "SELECT * FROM studentbio AS sb, student_grade_year AS sgy, teacher_grade_year AS tgy WHERE sb.studentbio_form_master = '".$staffObj->staff_id."' AND sgy.student_grade_year_student = sb.studentbio_id AND tgy.teacher = '".$staffObj->staff_id."' AND sgy.student_grade_year_year = '".$current_year."' AND tgy.session = '".$current_year."' AND sgy.student_grade_year_year = tgy.session ";
        
        $dbh_getStdQuery = $dbh->prepare($getStdQuery); $dbh_getStdQuery->execute(); 
        while ($d = $dbh_getStdQuery->fetch(PDO::FETCH_OBJ)) 
        {
            echo "StudentID: ".$d->studentbio_id;
            echo "StudnetPIC: ".$d->studentbio_pictures;
            echo "StudentName: ".$d->studentbio_lname.' '.$d->studentbio_fname.'</a> | Sex: '.$d->studentbio_gender;
            echo "StudnetGender: ".$d->studentbio_gender;
            echo "Class: ".getValue('grades_desc', 'grades', 'grades_id', $d->student_grade_year_grade);
            echo "Date Of Birth: ".$d->studentbio_dob;
        }
        $dbh_getStdQuery = null;
    }
}

?>