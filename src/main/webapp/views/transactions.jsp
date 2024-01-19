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
            top: 47%;
            left: 60%;
            transform: translate(-50%, -50%);
            background-color: rgba(0, 0, 0, 0.61);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
        }
    </style>
  </head>
  <body>
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark sticky-top" style="box-shadow: 0.3em 0.3em 5em rgb(0, 0, 0);">
      <a class="navbar-brand" href="/transactions/${accountNumber}"><strong>UBI</strong></a>
            <ul class="navbar-nav" style="margin-left: 89%;">
                <li class="nav-item">
                  <a class="nav-link text-info fa-md" href="/dashboard/${accountNumber}"><strong><i class="fa fa-arrow-circle-left">&nbsp;&nbsp;</i>Back</strong></a>
                </li>
            </ul>
    </nav>
    <div class="container-fluid" style="margin-top: 20px">
      <div class="row">
        <div class="col-sm-3">
          <h3 class="text-info"><i class="fa fa-bars fa-sm"></i>&nbsp;<strong>Banking Services</strong></i></h3>
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
        <div class="col-sm-9">
          <img src="/images/carousel7.jpg" alt="Los Angeles" width="1000" height="560">
          <div class="registration-form col-md-6">
            <!-- Your registration form fields go here -->
            <h6 class="text-danger text-center fa-lg" style="display: inline-block; ">${command}</h6>
            <ul class="nav nav-tabs" id="userTabs" role="tablist">
              <li class="nav-item">
                <a
                  class="nav-link active"
                  id="withdraw-tab"
                  data-toggle="tab"
                  href="#withdraw"
                  role="tab"
                  aria-controls="withdraw"
                  aria-selected="true"
                  ><strong>Withdraw</strong></a
                >
              </li>
              <li class="nav-item">
                <a
                  class="nav-link"
                  id="deposit-tab"
                  data-toggle="tab"
                  href="#deposit"
                  role="tab"
                  aria-controls="deposit"
                  aria-selected="false"
                  ><strong>Deposit</strong></a
                >
              </li>
              <li class="nav-item">
                <a
                  class="nav-link"
                  id="fundtransfer-tab"
                  data-toggle="tab"
                  href="#fundtransfer"
                  role="tab"
                  aria-controls="fundtransfer"
                  aria-selected="false"
                  ><strong>Fund Transfer</strong></a
                >
              </li>
            </ul>
            <div class="tab-content" id="withdrawTabContent">
              <!-- Withdraw Form -->
              <div
                class="tab-pane fade show active"
                id="withdraw"
                role="tabpanel"
                aria-labelledby="withdraw-tab"
              >
                <form id="withdrawForm" method="post" action="/withdraw/${accountNumber}">
                  <br><h3 class="text-warning" style="margin-left: 24%;"><strong>-- Withdraw Form --</strong></h3>
                  <div class="form-group">
                    <br>
                    <label for="accountNumber" class="fa fa-lg text-warning">Account Number :   ${accountNumber}</label><br>
                    <label for="accountNumber" class="fa fa-lg text-warning">Name :   ${name}</label>
                  </div>
                  <div class="form-group">
                    <label for="amount"class="fa fa-rupee-sign fa-lg text-warning">&nbsp; Enter Amount</label>
                    <input
                      type="text"
                      class="form-control"
                      id="amount"
                      name="amount"
                      required
                    />
                  </div>
                  <button type="submit" class="btn btn-primary"><strong>Withdraw</strong></button>
                </form>
              </div>

              <!-- Deposit Form -->
              <div
                class="tab-pane fade"
                id="deposit"
                role="tabpanel"
                aria-labelledby="deposit-tab"
              >
                <form id="depositForm" method="post" action="/deposit/${accountNumber}">
                    <br><h3 class="text-warning" style="margin-left: 24%;"><strong>-- Deposit Form --</strong></h3>
                  <div class="form-group">
                    <br>
                    <label for="accountNumber" class="fa fa-lg text-warning">Account Number :   ${accountNumber}</label>
                  </div>
                  <div class="form-group">
                    <label for="amount"class="fa fa-rupee-sign fa-lg text-warning">&nbsp; Enter Amount</label>
                    <input
                      type="text"
                      class="form-control"
                      id="amount"
                      name="amount"
                      required
                    />
                  </div>
                  <button type="submit" class="btn btn-primary"><strong>Deposit</strong></button>
                </form>
              </div>

              <!-- Fund Transfer Form -->
              <div
                class="tab-pane fade"
                id="fundtransfer"
                role="tabpanel"
                aria-labelledby="fundtransfer-tab"
              >
                <form id="fundtransferForm" method="post" action="/transfer/${accountNumber}">
                    <br><h3 class="text-warning" style="margin-left: 17%;"><strong>-- Fund Transfer Form --</strong></h3>
                  <div class="form-group">
                    <br>
                    <label for="accountNumber" class="fa fa-lg text-warning">Account Number :   ${accountNumber}</label>
                  </div>
                  <div class="form-group">
                    <label for="password" class="fa fa-lock fa-md text-white">&nbsp; &nbsp;Password</label>
                    <div class="input-group">
                      <input
                        type="password"
                        class="form-control"
                        id="password"
                        name="password"
                        required
                      />
                      <div class="input-group-append">
                        <button class="btn btn-outline-warning" type="button" id="togglePassword">
                          <i class="fa fa-eye"></i>
                        </button>
                      </div>
                    </div>
                  </div>
                  <!-- Account Number (Number Only) -->
                  <div class="form-group">
                    <label for="targetaccno"class="fa fa-lg text-warning">Enter Target Account Number</label>
                    <input
                      type="text"
                      class="form-control"
                      id="targetAccno"
                      name="targetAccno"
                      required
                      pattern="[0-9]*"
                    />
                  </div>
                  <div class="form-group">
                    <label for="amount"class="fa fa-rupee-sign fa-lg text-warning">&nbsp; Enter Amount</label>
                    <input
                      type="text"
                      class="form-control"
                      id="amount"
                      name="amount"
                      required
                    />
                  </div>
                  <button type="submit" class="btn btn-primary"><strong>Transfer</strong></button>
                </form>
              </div>
        </div>
        </div>
      </div>
    </div>
    <script>
        const togglePasswordBtn = document.getElementById('togglePassword');
        const passwordInput = document.getElementById('password');
        let passwordVisible = false;
      
        togglePasswordBtn.addEventListener('click', function() {
          passwordVisible = !passwordVisible;
          if (passwordVisible) {
            passwordInput.setAttribute('type', 'text');
            this.innerHTML = '<i class="fa fa-eye-slash"></i>';
          } else {
            passwordInput.setAttribute('type', 'password');
            this.innerHTML = '<i class="fa fa-eye"></i>';
          }
        });
      </script>
  </body>
  <div class="jumbotron text-center bg-dark" style="margin-bottom: 0; margin-left: -1%; margin-right: -1%;">
    <div class="container footer text-white">
     <strong class="fa-lg">&copy; 2023 United Bank of India</strong> 
    </div>
  </div>
</html>
