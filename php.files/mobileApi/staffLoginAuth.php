<?php
require ('../classes/pdoDB.php');
require ('../classes/kas-framework.php');
$kas_framework->safesession();

extract($_POST);

if(isset($_POST["username"]) && isset($_POST["password"]))
{

    $username = $_POST["username"];
    $password = $_POST["password"];

    if ($kas_framework->strIsEmpty($username) or $kas_framework->strIsEmpty($password)) 
    {
        echo json_encode(['response' => false, 'message' => "Username or Password Empty!", 'data' => ""]);
    }
    else
    {

        // $querySQL = "SELECT * FROM web_students WHERE (user_n = :username OR email = :username)";
        // $db_handle = $dbh->prepare($querySQL);
        // $db_handle->bindParam(':username', $username);
        // $db_handle->execute();
        // $get_rows = $db_handle->rowCount();
        // $loginObj = $db_handle->fetch();
        // $db_handle = null;


        $querySQL = "SELECT * FROM web_users AS wu, staff AS s WHERE (wu.web_users_username = :username or s.staff_email = :username) AND wu.web_users_password = '".$password."' AND (wu.web_users_type = 'T' or wu.web_users_type = 'S') AND s.staff_id = wu.web_users_relid LIMIT 1";
        $db_handle = $dbh->prepare($querySQL);
        $db_handle->bindParam(':username', $username); $db_handle->bindParam(':username', $username); 
        $db_handle->execute();
        $get_rows = $db_handle->rowCount();
        $loginObj = $db_handle->fetch(PDO::FETCH_OBJ);
        $db_handle = null;
        
        if ($get_rows == 1 and $loginObj->web_users_password == $password)
        {
            
            if ($loginObj->web_users_active != '1')
            {
                echo json_encode(['response' => false, 'message' => "This Account is not Active or has been Blocked", 'data' => $kas_framework->url_root('staff/confirmreg')]);
            }
            else
            {
                //$kas_framework->showInfoCallout('Logged in. Please wait...');
                // $_SESSION['tapp_staff_username'] = $loginObj->web_users_username;
                // $_SESSION['loadDiscussionData'] = 0;
                // print '<script type="text/javascript"> self.location = "'.$kas_framework->url_root('redirect?httptrack='). $kas_framework->generateRandomString(20). $kas_framework->generateRandomString(20). $kas_framework->generateRandomString(20). '&press=sf"</script>';
                //other browsers
                //exit();

                echo json_encode(['response' => true, 'message' => "Login Successful", 'data' => $loginObj->web_users_username]);
            }
            
        }
        else
        {
            echo json_encode(['response' => false, 'message' => "Incorrect Username and Password", 'data' => $kas_framework->help_url('?topic=incorrect-details')]);
        }
    }
}
else
{
    echo json_encode(['response' => false, 'message' => "Authentication Error", 'data' => ""]);
}

?>