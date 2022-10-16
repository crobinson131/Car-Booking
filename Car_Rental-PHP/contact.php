<!-- Bootstrap CSS -Done by Anita B -->
<!DOCTYPE html>
<html>

<head>
   <title>Contact</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<!-- Font Awesome Kit -->
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<link rel="stylesheet" href="faq/css/contact.css">
<body>
<div class="container">
    <div class="contact-parent">
       <div class="contact-child child1">
          <p>
             <i class="fas fa-map-marker-alt"></i> Address <br />
             <span> 801 Main Street
             <br />
             Radford, VA
             </span>
          </p>
          <p>
             <i class="fas fa-phone-alt"></i> Let's Talk <br />
             <span> 540-333-5555</span>
          </p>
          <p>
             <i class=" far fa-envelope"></i> Anita & Catlyn car rental support <br />
             <span>abudathoki@radford.com</span>
          </p>
       </div>
       <div class="contact-child child2">
          <div class="inside-contact">
             <h2>Technical support</h2>
             <h3>
                <span id="confirm">
             </h3>
             <!-- <form action="mailto:abudathoki@radford.edu" method="post" enctype="text/plain"> -->
             <form action = "<?php $_PHP_SELF ?>" method = "POST">
               <h3>Make sure to put your valid information in the comment box
                   so we can get back to you in reasonble time</h3>
               Name:<br>
               <input type="text" name="name"><br>
               Phone Number:<br>
               <input type="text" name="phone"><br>
               Comment:<br>
               <input type="text" name="comment" size="50"><br><br>
               <input type="submit" value="Send">
               <input type="reset" value="Reset">
               </form>
               <?php
                if ($_SERVER["REQUEST_METHOD"] == "POST") {
                  $name = $_POST['name'];
                  $phone = $_POST['phone'];
                  $comment = $_POST['comment'];
                  if (empty($name) or empty($phone) or empty($comment)) {
                    echo "Please make sure to fill out all required information";
                  } else {
                    echo "Name: " . $name . "/n";
                    echo "Phone: " . $phone . "/n";
                    echo "Comment: " . $comment . "/n";
                  }
                }
               ?>
          </div>
       </div>
    </div>
 </div>
</head>
</body>



  </html>
