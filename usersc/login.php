<?php

ini_set("allow_url_fopen", 1);
if(isset($_SESSION)){session_destroy();}

require_once '../users/init.php';
require_once $abs_us_root.$us_url_root.'usersc/includes/header.php';
require_once $abs_us_root.$us_url_root.'usersc/includes/navigation_NOT_LOGGED.php';

$settingsQ = $db->query("SELECT * FROM settings");
$settings = $settingsQ->first();
$error_message = '';
if (@$_REQUEST['err']) $error_message = $_REQUEST['err']; // allow redirects to display a message
$reCaptchaValid=FALSE;
 
if (Input::exists()) {
    $token = Input::get('csrf');
    if(!Token::check($token)){
        die('Token doesn\'t match!');
    }
    //Check to see if recaptcha is enabled
    if($settings->recaptcha == 1){
        require_once 'includes/recaptcha.config.php';
 
        //reCAPTCHA 2.0 check
        $response = null;
 
        // check secret key
        $reCaptcha = new ReCaptcha($privatekey);
 
        // if submitted check response
        if ($_POST["g-recaptcha-response"]) {
            $response = $reCaptcha->verifyResponse($_SERVER["REMOTE_ADDR"],$_POST["g-recaptcha-response"]);
        }
        if ($response != null && $response->success) {
            $reCaptchaValid=TRUE;
 
        }else{
            $reCaptchaValid=FALSE;
            $error_message .= 'Please check the reCaptcha.';
        }
    }else{
        $reCaptchaValid=TRUE;
    }
 
    if($reCaptchaValid || $settings->recaptcha == 0){ //if recaptcha valid or recaptcha disabled
 
        $validate = new Validate();
        $validation = $validate->check($_POST, array(
            'username' => array('display' => 'Username','required' => true),
            'password' => array('display' => 'Password', 'required' => true)));
 
        if ($validation->passed()) {
            //Log user in
 
            $remember = (Input::get('remember') === 'on') ? true : false;
            $user = new User();
            $login = $user->loginEmail(Input::get('username'), trim(Input::get('password')), $remember);
            if ($login) {
                # if user was attempting to get to a page before login, go there
                $dest = sanitizedDest('dest');
                if (!empty($dest)) {
                    Redirect::to($dest);
                } elseif (file_exists($abs_us_root.$us_url_root.'usersc/scripts/custom_login_script.php')) {
                   
                    # if site has custom login script, use it
                    # Note that the custom_login_script.php normally contains a Redirect::to() call
                    require_once $abs_us_root.$us_url_root.'usersc/scripts/custom_login_script.php';
                } else {
                    if (($dest = Config::get('homepage')) ||
                            ($dest = 'account.php')) {
                        #echo "DEBUG: dest=$dest<br />\n";
                        #die;
                        Redirect::to($dest);
                    }
                }
            } else {
                $error_message .= 'Log in failed. Please check your username and password and try again.';
            }
        } else{
            $error_message .= '<ul>';
            foreach ($validation->errors() as $error) {
                $error_message .= '<li>' . $error . '</li>';
            }
            $error_message .= '</ul>';
        }
    }
}
if (empty($dest = sanitizedDest('dest'))) {
  $dest = '';
}
?>

  <div id="page-wrapper">
            <div class="container-fluid">
                <div class="bg-danger"><?=$error_message;?></div>
<?php
if($settings->glogin==1 && !$user->isLoggedIn()){
require_once $abs_us_root.$us_url_root.'users/includes/google_oauth_login.php';
}
if($settings->fblogin==1 && !$user->isLoggedIn()){
require_once $abs_us_root.$us_url_root.'users/includes/facebook_oauth.php';
}
?>
                <div class="login-clean">
                    <form id="loginform" action="login.php" method="post">
                        <h2 class="text-center">MLM Leads Club</h2>
                        <input type="hidden" name="dest" value="<?= $dest ?>" />
                        <h4 class="text-center">Members Portal</h4>
                        <div class="illustration"></div>

                        <div class="form-group">                        
                            <input class="form-control" id="username" type="text" name="username" placeholder="Username/Email" required autofocus>
                        </div>


                        <div class="form-group">
                            <input class="form-control" type="password" name="password" placeholder="Password" id="password" autocomplete="off">
                        </div>

<?php
    if($settings->recaptcha == 1){
    ?>
    <div class="form-group">
    <label>Please check the box below to continue</label>
    <div class="g-recaptcha" data-sitekey="<?=$publickey; ?>"></div>
    </div>
    <?php } ?>

                        <div class="form-group">
                            <label for="remember">
                            <input type="checkbox" name="remember" id="remember" > Remember Me</label>
                        </div>

                        <input type="hidden" name="csrf" value="<?=Token::generate(); ?>">
                        <button class="submit btn btn-primary" type="submit">Sign In</button>



                       
                        <div>
                            <p class="text-center text-warning" id="status"></p>                            
                        </div>
                        <a href="forgot_pass.php" class="forgot"><strong>Forgot your password?</strong></a><br>
                        <a href="signup.php" class="forgot">Not a club member yet? <br>Join the club today!</a>
                    </form>
                </div>                
          
       

<!-- footers -->
<?php require_once $abs_us_root.$us_url_root.'users/includes/page_footer.php'; // the final html footer copyright row + the external js calls ?>

<!-- Place any per-page javascript here -->



