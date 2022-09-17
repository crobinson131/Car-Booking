<?php
   session_start();
?>
<html lang="en">
   <head>
    <meta charset="utf-8">
      <title>CA Car Service login</title>
   </head>
   <body>

      <h2>Login</h2>

      <div>
         <?php
            function redirect($url) {

                header('Location: '.$url);
                die();

             }

            $msg = '';

            if (isset($_POST['login']) && !empty($_POST['username']) && !empty($_POST['password'])) {

               if ( $_POST['username'] == 'user' && $_POST['password'] == 'password' ) {//place holders for db connection

                    $_SESSION['password'] = $_POST['password'];//place holders for db connection
                    $_SESSION['valid'] = true;
                    $_SESSION['timeout'] = time() + 60*5;
                    $_SESSION['username'] = 'user';//place holders for db connection
                    //redirect user to home page

                    //redirect(HOME PAGE HERE);
               }else {

                  $msg = 'Invalid username or password. Please try again.';
               }
            }
         ?>
      </div>

      <div class="container">
         <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
            <h3>
                <?php
                        echo $msg;
                ?>
            </h3>
            <input type="text" name="username"></br>
            <input type="password" name="password">
            <button type="submit" name="login">Login</button>
            <h4>Not a member? Sign up now!</h4>
            <button type="submit" name="signup">Sign Up</button>
            <!-- <button onclick="redirect(SIGN UP PAGE HERE)"> Sign Up</button> -->
         </form>
      </div>
   </body>
</html>
