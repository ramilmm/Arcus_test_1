<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Profile</title>

    <!-- Bootstrap Core CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" type="text/css">

    <!-- Fonts -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!-- Squad theme CSS -->
    <link href="css/style.css" rel="stylesheet">
	<link href="css/default.css" rel="stylesheet">
    

</head>

<body id="page-top">

	<!-- Section: contact -->
    <section id="addPublicSection" class="home-section text-center">
		<div class="container">

    <div class="row">
        <div class="col-lg-12">
            <div class="addPublic">
                
                <form id="contact-form" action="" method="post" role="form" class="contactForm">
                <div class="row">
                    <div class="col-md-12">
                      <div class="header_inputs">
                           <h3>Profile data</h3>
                      </div>
                       <div class="container">
                           <div class="row">
                               <div class="col-md-12">
                                   <table class="table">
                                       <thead>
                                       <tr>
                                           <th scope="col">Field</th>
                                           <th scope="col">Value</th>
                                       </tr>
                                       </thead>
                                       <tbody>
                                       <tr>
                                           <td>Username</td>
                                           <td>${user.username}</td>
                                       </tr>
                                       <tr>
                                           <td>Name</td>
                                           <td>${user.name}</td>
                                       </tr>
                                       <tr>
                                           <td>E-mail</td>
                                           <td>${user.email}</td>
                                       </tr>
                                       </tbody>
                                   </table>
                            </div>
                        </div>
                       </div>
                </div>
                </form>
            </div>
        </div>
    </div>	

		</div>
	</section>
	<!-- /Section: contact -->

    <!-- Core JavaScript Files -->
    <script src="js/jquery-2.1.3.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="js/custom.js"></script>

    <style>
        td {
            text-align: center;
        }

        #addPublicSection {
            height: 100vh;
        }
    </style>
</body>

</html>
