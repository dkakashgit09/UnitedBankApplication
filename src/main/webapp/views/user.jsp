<!DOCTYPE html>
<html lang="en">
  <head>
    <title>United Bank</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
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
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <style>
      .fakeimg {
        height: 200px;
        background: #aaa;
      }
      /* .centered {
        position: absolute;
        top: 2%;
        left: 47.6%;
        transform: translate(-50%, -50%);
      } */
      .image-container {
        position: relative;
      }

      .text-overlay {
        position: absolute;
        top: 6%;
        left: 50%;
        transform: translate(-50%, -50%);
        text-align: center;
        width: 100%;
      }
    </style>
  </head>
  <body>
    <nav
      class="navbar navbar-expand-sm bg-dark navbar-dark sticky-top"
      style="box-shadow: 0.3em 0.3em 5em rgb(0, 0, 0)"
    >
      <a class="navbar-brand" href="#"><strong>UBI</strong></a>
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a class="nav-link text-info" href="/usersettings/${accountNumber}"
            ><strong><i class="fa fa-cog">&nbsp;</i>User Settings</strong></a
          >
        </li>
        <li class="nav-item">
          <a class="nav-link text-info" href="/transactions/${accountNumber}"
            ><strong
              ><i class="fas fa-rupee-sign">&nbsp;</i>Fund Transfer</strong
            ></a
          >
        </li>
        <li class="nav-item">
          <a class="nav-link text-info" href="/"
            ><strong><i class="fa fa-sign-out-alt">&nbsp;</i>Logout</strong></a
          >
        </li>
      </ul>
    </nav>
    <div class="container-fluid" style="margin-top: 20px">
      <div class="row">
        <div class="col-md-3">
          <h3 class="text-info">
            <i class="fa fa-bars fa-sm"></i>&nbsp;<strong
              >Banking Services</strong
            >
          </h3>
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
          <hr class="d-md-none" />
        </div>
        <div class="col-md-9 position-relative">
          <div class="image-container">
            <img
              src="/images/userdashboard.jpg"
              alt="User Dashboard"
              class="img-fluid"
            />
            <div class="text-overlay text-center">
              <strong class="text-info fa-3x">Welcome ${name}...</strong>
              <p class="text-success">
                <strong> Your Account Number is ${accountNumber}</strong>
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="jumbotron text-center bg-dark" style="margin-bottom: 0">
      <div class="container footer text-white">
        <strong>&copy; 2023 United Bank of India</strong>
      </div>
    </div>
  </body>
</html>
