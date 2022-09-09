<?php 
require ('../php.files/classes/pdoDB.php');
require ('../php.files/classes/kas-framework.php');
		$kas_framework->safesession();

//killing the session and the cookie that is holding the remember password for the welcomeback and redirecting 
//the page for the proper login		
	if (@$_GET['ref'] == 'newuser') {
			$kas_framework->setCookie('hold_username_staff', '', 30);
			$kas_framework->setCookie('hold_image_staff', '', 30);
			print '<script type="text/javascript">self.location = "'.$kas_framework->url_root('staff').'" </script>';
	}
	
	if ($kas_framework->getCookie('hold_username_staff') == '' or ($kas_framework->getCookie('hold_image_staff') == '' or $kas_framework->getCookie('hold_image_staff') == $kas_framework->url_root('pictures/'))) {
		print '<script type="text/javascript"> self.location = "'.$kas_framework->url_root('staff').'" </script>';
	}
	
	$held_image = $kas_framework->getCookie('hold_image_staff');
	$username = $kas_framework->getCookie('hold_username_staff');
?>
<!DOCTYPE html>
<html class="lockscreen">
    <head>
        <meta charset="UTF-8">
        <title>Resume Login</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
		<link rel="shortcut icon" type="image/x-icon" href="<?php print $kas_framework->school_utility_image('badge') ?>" />
        <!-- bootstrap 3.0.2 -->
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- font Awesome -->
        <link href="../css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Theme style -->
        <link href="../css/AdminLTE.css" rel="stylesheet" type="text/css" />

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <!-- Automatic element centering using js -->
        <div class="center">            
            <div class="headline text-center" id="time">
                <!-- Time auto generated by js -->
            </div><!-- /.headline -->
            <!-- User name -->
            <div class="lockscreen-name"><?php print $username; ?></div>
            
            <!-- START LOCK SCREEN ITEM -->
            <div class="lockscreen-item">
                <!-- lockscreen image -->
				<div class="lockscreen-image">
                    <img src="<?php print $held_image; ?>" alt="user image"/>
                </div>
				
                <!-- /.lockscreen-image -->

                <!-- lockscreen credentials (contains the form) -->
                <div class="lockscreen-credentials">   

                    <div class="input-group">
					<input type="hidden" id="username" value="<?php print $username; ?>" />
                        <input type="password" required="required" class="form-control" placeholder="password" id="password" />
                        <div class="input-group-btn">
                            <button id="signin" class="btn btn-flat"><i class="fa fa-arrow-right text-muted"></i></button>
                        </div>
                    </div>
                </div><!-- /.lockscreen credentials -->

            </div><!-- /.lockscreen-item -->

            <div class="lockscreen-link">
                <a href="welcomeback?ref=newuser">Not <?php print $username; ?>? sign in with a different username</a>
            </div>  
				<br /><span id="loginMessage"></span>			
        </div><!-- /.center -->

       <!-- jQuery 2.0.2 -->
        <script type="text/javascript" src="../myjs/jquery.min.js"></script>
        <script type="text/javascript" src="../myjs/feccukcontroller.js"></script>
        <!-- Bootstrap -->
        <script src="../js/bootstrap.min.js" type="text/javascript"></script> 

        <!-- page script -->
        <script type="text/javascript">
		/* login sending function */
		$('#signin').click(function(e) {
			$(this).attr('disabled', 'disabled');
			$('#loginMessage').html('<center>Please Wait...  <?php $kas_framework->loading_h(); ?></center>');
			username = $('#username').val(); byepass = '67fdg5df5BG5T576567bt766';
			password = $('#password').val();
			$.post('../php.files/staff_login_script', {username:username, password:password, byepass:byepass}, function(data) {
				$('#loginMessage').html(data);
			});
			
			return false;
		});

            $(function() {
                startTime();
                $(".center").center();
                $(window).resize(function() {
                    $(".center").center();
                });
            });

            /*  */
            function startTime()
            {
                var today = new Date();
                var h = today.getHours();
                var m = today.getMinutes();
                var s = today.getSeconds();

                // add a zero in front of numbers<10
                m = checkTime(m);
                s = checkTime(s);

                //Check for PM and AM
                var day_or_night = (h > 11) ? "PM" : "AM";

                //Convert to 12 hours system
                if (h > 12)
                    h -= 12;

                //Add time to the headline and update every 500 milliseconds
                $('#time').html(h + ":" + m + ":" + s + " " + day_or_night);
                setTimeout(function() {
                    startTime()
                }, 500);
            }

            function checkTime(i)
            {
                if (i < 10)
                {
                    i = "0" + i;
                }
                return i;
            }

            /* CENTER ELEMENTS IN THE SCREEN */
            jQuery.fn.center = function() {
                this.css("position", "absolute");
                this.css("top", Math.max(0, (($(window).height() - $(this).outerHeight()) / 2) +
                        $(window).scrollTop()) - 30 + "px");
                this.css("left", Math.max(0, (($(window).width() - $(this).outerWidth()) / 2) +
                        $(window).scrollLeft()) + "px");
                return this;
            }
        </script>
    </body>
</html>