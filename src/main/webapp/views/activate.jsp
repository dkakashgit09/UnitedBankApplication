<!DOCTYPE html>
<html lang="en">
  <head>
    <title>United Bank</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
    />
    <link 
      rel="stylesheet" 
      href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" 
      integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" 
      crossorigin="anonymous"
    />
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <style>
      .registration-form {
            position: absolute;
            top: 41%;
            left: 52%;
            transform: translate(-50%, -50%);
            background-color: rgba(0, 0, 0, 0.612);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }
    </style>
  </head>
  <body>
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark sticky-top" style="box-shadow: 0.3em 0.3em 5em rgb(0, 0, 0);">
      <a class="navbar-brand" href="/"><strong>UBI</strong></a>
      <ul class="navbar-nav" style="margin-left: 89%;">
        <li class="nav-item">
          <a class="nav-link text-info fa-md" href="/"><strong><i class="fa fa-arrow-circle-left">&nbsp;&nbsp;</i>Back</strong></a>
        </li>
    </ul>
    </nav>
    <div class="container-fluid" style="margin-top: 20px">
      <div class="row">
        <div class="col-sm-3">
          <h3 class="text-fade"><i class="fa fa-bars fa-sm"></i>&nbsp;<strong>Banking Services</strong></i></h3>
                    <ul class="text-secondary">
                    <li>Account Management</li>
                    <li>Loans and Mortgages</li>
                    <li>Investment Services</li>
                    <li>Fund Transfer</li>
                    <li>Bill Payments</li>
                    <li>Mobile Banking</li>
                    <li>ATM Locator</li>
                    <li>Transaction History</li>
                    <li>Savings Accounts</li>
                    <li>Fixed Deposits</li>
                    <li>Credit Card Services</li>
                    <li>Foriegn Exchange Services</li>
                    <li>E-Statements</li>
                    <li>Cheque Book Requests</li>
                    <li>Tax Services</li>
                    <li>Safety Box Rentals</li>
                    <li>Online Educational Resources</li>
                    <li>Secure Messaging</li>
                    <li>Alerts and Notifications</li>
                    <li>Customer Support</li>
                    <!-- Add more services here -->
                </ul>
          <hr class="d-sm-none" />
        </div>
        <div class="col-sm-9" style="margin-top: 15px;">
            <img src="/images/carousel6.jpg" alt="Los Angeles" width="1000" height="600">
          <div class="registration-form col-md-6">
            <!-- Your registration form fields go here -->
            
                <form id="activateForm" method="post" action="/activate/${accountNumber}">
                    <br><h4 class="fa-2x text-danger-50" style="margin-top: -5%; margin-left: 9%;"><strong>-- Activate Your Account --</strong></h4>
                  <div class="form-group">
                    <br>
                    <label for="accountNumber" class="fa-2x text-warning"><strong>Account Number : ${accountNumber}</strong></label>
                  </div>
                  <!-- Password (Complex Requirements) -->
                  <div class="form-group">
                    <label for="password" class="fa fa-lock fa-lg text-warning">&nbsp; &nbsp;Confirm Your Password</label>
                    <input
                      type="password"
                      class="form-control"
                      id="regPassword"
                      name="password"
                      required
                    />
                  </div>
                  <button type="submit" class="btn btn-primary">
                    <strong>Activate</strong>
                  </button>
                  <h6 class="fa-lg text-warning" style="display: inline-block; margin-left: 20%;">${error}</h6>
                </form>
        </div>
        </div>
        </div>
      </div>
    </div>

    <div class="jumbotron text-center bg-dark" style="margin-bottom: 0">
        <div class="container footer text-white">
         <strong class="fa-lg">&copy; 2023 United Bank of India</strong> 
        </div>
    </div>
  </body>
</html>
