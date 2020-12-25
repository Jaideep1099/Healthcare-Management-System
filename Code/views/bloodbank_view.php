<html>
<head>
<title>NITC-HCMS</title>    
<link rel="stylesheet" href="style/blood_style.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>   
<body>
    <!------------------------Navbar---------------------------->
    <section id="nav-bar">
        <nav class="navbar navbar-expand-lg navbar-light">
            <a class="navbar-brand" href="#"><img src="images/nitc-logo.png">&nbsp;&nbsp;&nbsp;NITC Health Care Management System</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fa fa-bars" aria-hidden="true"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
              <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                  <a class="nav-link" href="/home">HOME</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="/logout">LOGOUT</a>
                </li>
              </ul>
            </div>
          </nav>
    </section>
    <!---------------------banner------------------------------->
    <div id="main1">
        <center>
            <br><br><br>
            <div class="container p-5 my-3 bg-primary text-white" >
            <h1>AVIALABLE UNITS</h1>
            <form>
                <br><br>
                <div class="form-group row d-inline-flex p-5">
                    <label for="BUID1" class="col-sm-2 col-form-label">O Positive</label>
                    <div class="col-sm-10">
                        <input type="float" readonly class="form-control-plaintext" id="BUID1" value="<?=$table['O+']?>">
                    </div>
                </div>
                <div class="form-group row d-inline-flex p-5">
                  <label for="BUID2" class="col-sm-2 col-form-label">O Negative</label>
                  <div class="col-sm-10">
                    <input type="text" readonly class="form-control-plaintext" id="BUID2" value="<?=$table['O-']?>">
                  </div>
                </div>
                <div class="form-group row d-inline-flex p-5">
                    <label for="BUID1" class="col-sm-2 col-form-label">A Positive</label>
                    <div class="col-sm-10">
                        <input type="float" readonly class="form-control-plaintext" id="BUID1" value="<?=$table['A+']?>">
                    </div>
                </div>
                <div class="form-group row d-inline-flex p-5">
                  <label for="BUID2" class="col-sm-2 col-form-label">A Negative</label>
                  <div class="col-sm-10">
                    <input type="text" readonly class="form-control-plaintext" id="BUID2" value="<?=$table['A-']?>">
                  </div>
                </div>
                <div class="form-group row d-inline-flex p-5">
                    <label for="BUID1" class="col-sm-2 col-form-label">B Positive</label>
                    <div class="col-sm-10">
                        <input type="float" readonly class="form-control-plaintext" id="BUID1" value="<?=$table['B+']?>">
                    </div>
                </div>
                <div class="form-group row d-inline-flex p-5">
                  <label for="BUID2" class="col-sm-2 col-form-label">B Negative</label>
                  <div class="col-sm-10">
                    <input type="text" readonly class="form-control-plaintext" id="BUID2" value="<?=$table['B-']?>">
                  </div>
                </div>
                <div class="form-group row d-inline-flex p-5">
                    <label for="BUID1" class="col-sm-2 col-form-label">AB Positive</label>
                    <div class="col-sm-10">
                        <input type="float" readonly class="form-control-plaintext" id="BUID1" value="<?=$table['AB+']?>">
                    </div>
                </div>
                <div class="form-group row d-inline-flex p-5">
                  <label for="BUID2" class="col-sm-2 col-form-label">AB Negative</label>
                  <div class="col-sm-10">
                    <input type="text" readonly class="form-control-plaintext" id="BUID2" value="<?=$table['AB-']?>">
                  </div>
                </div>
                
                <form>
              
            </form>
            </div>
            <br><br><br> 
            <div class="container p-5 my-3 bg-primary text-white">
            <h1>DONATION</h1>
            <form method="POST" action="">
                <br><br>
                <div class="form-group row">
                    <label for="username" class="col-sm-2 col-form-label">USERNAME</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="username" name="d_uname">
                    </div>
                  </div>
                <div class="form-group row">
                  <label for="units" class="col-sm-2 col-form-label">UNITS</label>
                  <div class="col-sm-10">
                    <input type="number" step="1" class="form-control" id="units" name="units">
                  </div>
                </div>
                <button type="submit" class="btn btn-success">Submit</button>
                <br><br>
            </form>
            </div>
            <br><br><br>
            <div class="container p-5 my-3 bg-primary text-white">
            <h1>WITHDRAW UNITS</h1>
            <form method="POST" action="">
                <br><br>
                <div class="form-group row">
                    <label for="username" class="col-sm-2 col-form-label">USERNAME</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="username" name="r_uname">
                    </div>
                  </div>
                <div class="form-group row">
                  <label for="units" class="col-sm-2 col-form-label">UNITS</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="units" name="units">
                  </div>
                </div>
                <button type="submit" class="btn btn-success">Submit</button>
                <br><br>
            </form>
            </div>
            <br><br><br><br><br><br><br><br><br>
        </center>
    <div>

    <!--------------footer---------->
    <section id="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-4 footer-box">
                    <img src="images/nitc-logo.png">
                    <p></p>
                </div>
                <div class="col-md-4 footer-box">
                    <p><b>CONTACT US</b></p>
                    <p><i class="fa fa-map-marker" aria-hidden="true"></i>
                        National Institute Of Technology, Calicut Mukkam Road, Kattangal, Kerala 673601 </p>
                    <p><i class="fa fa-phone" aria-hidden="true"></i>
                        0495 228 6106</p>
                    <p><i class="fa fa-envelope-o" aria-hidden="true"></i>
                        mail </p>
                </div>
            </div>
        </div>
    </section>
</body> 
</html>