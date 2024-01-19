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
        top: 1%;
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
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <button
              class="btn btn-info"
              data-toggle="modal"
              data-target="#loginModal"
            >
              Login Here
            </button>
          </li>
        </ul>
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
              src="/images/register.jpg"
              alt="User Dashboard"
              class="img-fluid"
            />
            <div class="text-overlay text-center">
              <strong class="text-info fa-2x"
                >Your Account Number is ${accountNumber}</strong
              >
            </div>
          </div>
        </div>
        <!-- The Modal -->
        <div
          class="modal fade"
          id="loginModal"
          tabindex="-1"
          role="dialog"
          aria-labelledby="loginModalLabel"
          aria-hidden="true"
        >
          <div class="modal-dialog">
            <div
              class="modal-content"
              style="background-color: rgba(0, 0, 0, 0.562)"
            >
              <!-- Modal Header -->
              <div class="modal-header">
                <h4 class="modal-title text-danger">
                  <strong>Login/Register</strong>
                </h4>
                <button type="button" class="close" data-dismiss="modal">
                  &times;
                </button>
              </div>
              <div class="modal-boprimary">
                <ul class="nav nav-tabs" id="loginTabs" role="tablist">
                  <li class="nav-item">
                    <a
                      class="nav-link active text-success"
                      id="login-tab"
                      data-toggle="tab"
                      href="#login"
                      role="tab"
                      aria-controls="login"
                      aria-selected="true"
                      ><strong>Login</strong></a
                    >
                  </li>
              </div>
              <!-- Modal body -->
              <div class="modal-body modal-boprimary">
                <div class="tab-content" id="loginTabContent">
                  <!-- Login Form -->
                  <div
                    class="tab-pane fade show active"
                    id="login"
                    role="tabpanel"
                    aria-labelledby="login-tab"
                  >
                    <form id="loginForm" method="post" action="/login">
                      <!-- Account Number (Number Only) -->
                      <div class="form-group">
                        <label for="accountNumber" class="fa fa-md text-white"
                          >Account Number</label
                        >
                        <input
                          type="text"
                          class="form-control"
                          id="accountNumber"
                          name="accountNumber"
                          required
                          pattern="[0-9]*"
                        />
                      </div>
                      <!-- UserName (No Numbers or Special Characters Except ".") -->
                      <div class="form-group">
                        <label
                          for="UserName"
                          class="fa fa-user-tie fa-md text-white"
                          >&nbsp; &nbsp;Username</label
                        >
                        <input
                          type="text"
                          class="form-control"
                          id="username"
                          name="username"
                          required
                        />
                      </div>
                      <!-- Password (Complex Requirements) -->
                      <div class="form-group">
                        <label
                          for="password"
                          class="fa fa-lock fa-md text-white"
                          >&nbsp; &nbsp;Password</label
                        >
                        <div class="input-group">
                          <input
                            type="password"
                            class="form-control"
                            id="password"
                            name="password"
                            required
                          />
                          <div class="input-group-append">
                            <button
                              class="btn btn-outline-warning"
                              type="button"
                              id="togglePassword"
                            >
                              <i class="fa fa-eye"></i>
                            </button>
                          </div>
                        </div>
                      </div>
                      <button type="submit" class="btn btn-primary">
                        Login
                      </button>
                      <button
                        type="button"
                        class="btn btn-danger"
                        data-dismiss="modal"
                      >
                        Close
                      </button>
                    </form>
                  </div>
                </div>
              </div>
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
    <script>
        const togglePasswordBtn = document.getElementById('togglePassword');
        const passwordInput = document.getElementById('password');
      
        function togglePasswordVisibility(button, input) {
          let passwordVisible = false;
      
          button.addEventListener('click', function() {
            passwordVisible = !passwordVisible;
            if (passwordVisible) {
              input.setAttribute('type', 'text');
              this.innerHTML = '<i class="fa fa-eye-slash"></i>';
            } else {
              input.setAttribute('type', 'password');
              this.innerHTML = '<i class="fa fa-eye"></i>';
            }
          });
        }
      
        togglePasswordVisibility(togglePasswordBtn, passwordInput);
      </script>
  </body>
</html>
