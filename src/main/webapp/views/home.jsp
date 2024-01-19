<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <style>
      img {
        margin-top: -32px;
      }
      /* Make the image fully responsive */
      .carousel-inner {
        width: 100%;
        height: auto;
        margin-bottom: 50px;
        border-radius: 1%;
      }
    </style>
  </head>
  <body>
    <div
      class="jumbotron text-center bg-info"
      style="margin-bottom: -20px; margin-top: -10px; text-align: center"
    >
      <img
        src="images/UB_logo.jpg"
        class="float-left"
        alt="2px"
        width="120px"
        height="135px"
      />
      <h1 class="text-white">United Bank of India</h1>
      <h3>The Better Way to Bank</h3>
    </div>
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark sticky-top" style="box-shadow: 0.3em 0.3em 5em rgb(0, 0, 0);">
      <a class="navbar-brand" href="/"><strong>UBI</strong></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <!-- <div class="toast" data-autohide="false">
          <div class="toast-body">
            <h6 class="ml-2 mb-1 close" data-dismiss="toast"><strong class="text-danger fa-sm">${command}</strong>&times;</h6>
          </div>
        </div> -->
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <button class="btn btn-info" data-toggle="modal" data-target="#loginModal">Login/Register</button>
          </li>
        </ul>
      </div>
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
        <div class="col-sm-9" style="margin-top: 15px;">
          <!-- Carousel and Contact/Help Section -->
          <div class="popover-content" style="display: none;">
            <div class="alert alert-danger" role="alert" id="errorMessage">
              <!-- Command message will appear here -->
            </div>
          </div>
          <div class="container mt-5" id="demo" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="/images/carousel5.jpg" alt="Los Angeles" class="d-block w-100">
              </div>
              <div class="carousel-item">
                <img src="/images/carousel9.jpg" alt="New York" class="d-block w-100">
              </div>
              <div class="carousel-item">
                <img src="/images/carousel10.jpg" alt="New York" class="d-block w-100">
                <div class="carousel-caption">
                  <h3>Your Caption Here</h3>
                </div>   
              </div>
            </div>
            <a class="carousel-control-prev" href="#demo" data-slide="prev">
              <span class="carousel-control-prev-icon bg-danger"></span>
            </a>
            <a class="carousel-control-next" href="#demo" data-slide="next">
              <span class="carousel-control-next-icon bg-danger"></span>
            </a>
          </div>
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
        <div class="modal-content" style="background-color: rgba(0, 0, 0, 0.562);">
          <!-- Modal Header -->
          <div class="modal-header">
            <h4 class="modal-title text-danger"><strong>Login/Register</strong></h4>
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
              <li class="nav-item">
                <a
                  class="nav-link text-success"
                  id="register-tab"
                  data-toggle="tab"
                  href="#register"
                  role="tab"
                  aria-controls="register"
                  aria-selected="false"
                  ><strong>Register</strong></a
                >
              </li>
            </ul>
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
                    <label for="accountNumber" class="fa fa-md text-white">Account Number</label>
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
                    <label for="UserName" class="fa fa-user-tie fa-md text-white">&nbsp; &nbsp;Username</label>
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
                  <button type="submit" class="btn btn-primary">Login</button>
                  <button
                    type="button"
                    class="btn btn-danger"
                    data-dismiss="modal"
                  >
                    Close
                  </button>
                  <p></p>
                  <%-- Display error message if present --%>
                    <% String errorMessage = (String) request.getAttribute("command"); %>
                      <% if (errorMessage != null && !errorMessage.isEmpty()) { %>
                      <div class="alert alert-danger" role="alert">
                        <strong>Error:</strong> <%= errorMessage %>
                      </div>
                  <% } %>
                </form>
              </div>

              <!-- Register Form -->
              <div
                class="tab-pane fade"
                id="register"
                role="tabpanel"
                aria-labelledby="register-tab"
              >
                <form id="registerForm" method="post" action="/register">
                  <!-- Full Name (No Numbers or Special Characters Except ".") -->
                  <div class="form-group">
                    <label for="UserName" class="fa fa-user-tie fa-md text-white">&nbsp; &nbsp;Username</label>
                    <input
                      type="text"
                      class="form-control"
                      id="fullName"
                      name="username"
                      required
                    />
                  </div>
                  <div class="form-group">
                    <label for="regPassword" class="fa fa-lock fa-md text-white">&nbsp; &nbsp;Password</label>
                    <div class="input-group">
                      <input
                        type="password"
                        class="form-control"
                        id="regPassword"
                        name="password"
                        required
                        pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
                        title="Password must contain at least one number, one uppercase and lowercase letter, and at least 8 or more characters"
                      />
                      <div class="input-group-append">
                        <button class="btn btn-outline-warning" type="button" id="toggleRegPassword">
                          <i class="fa fa-eye"></i>
                        </button>
                      </div>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="mobileNumber" class="fa fa-phone fa-md text-white">&nbsp; &nbsp;Mobile Number</label>
                    <input
                      type="tel"
                      class="form-control"
                      id="mobileNumber"
                      name="mobileno"
                      required
                    />
                  </div>
                  <!-- City (Select Field) -->
                  <div class="form-group">
                    <label for="city" class="fa fa-city fa-md text-white">&nbsp; &nbsp;City</label>
                    <select
                      class="form-control"
                      id="city"
                      name="address"
                      required
                    >
                      <option value="">Select City</option>
                      <option value="Tirupati">Tirupati</option>
                      <option value="Hyderabad">Hyderabad</option>
                      <option value="Bengaluru">Bengaluru</option>
                      <option value="Kolkata">Kolkata</option>
                      <option value="Mumbai">Mumbai</option>
                      <option value="Pune">Pune</option>
                      <option value="Delhi">Delhi NCR</option>
                      <option value="Chandigarh">Chandigarh</option>
                      <option value="Chennai">Chennai</option>
                      <option value="Madhurai">Madhurai</option>
                      <!-- Add more cities here -->
                    </select>
                  </div>
                  <button type="submit" class="btn btn-primary">
                    Register
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
    <!-- Carousel and Contact/Help Section -->
    <!-- <div class="container mt-5">
         Add your content, carousel, and contact/help section here 
    </div> -->

    <!-- Add Bootstrap and jQuery scripts here -->
    <div class="jumbotron text-center bg-dark" style="margin-bottom: 0">
        <div class="container footer text-white">
         <strong class="fa-lg">&copy; 2023 United Bank of India</strong> 
        </div>
      </div>
      <script>
        // Fetching the command message from the server-side directly to JavaScript variable
        const commandMessage = '<%= request.getAttribute("command") %>';
        const error1="Invalid Credentials";
        const error2="Account Not Found.. create Account"
        document.addEventListener('DOMContentLoaded', function() {
          if (error1 == commandMessage || error2 == commandMessage) {
            const popoverContent = document.querySelector('.popover-content');
            const errorMessageDiv = document.getElementById('errorMessage');
  
            errorMessageDiv.innerHTML = commandMessage; // Display command message
  
            popoverContent.style.display = 'block'; // Show popover content
  
            // Hide the popover after a few seconds (e.g., 5 seconds)
            setTimeout(function() {
              popoverContent.style.display = 'none';
            }, 6000); // Adjust the time as needed
          }
        });
      </script>
      <script>
        const togglePasswordBtn = document.getElementById('togglePassword');
        const passwordInput = document.getElementById('password');
        const toggleRegPasswordBtn = document.getElementById('toggleRegPassword');
        const regPasswordInput = document.getElementById('regPassword');
      
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
        togglePasswordVisibility(toggleRegPasswordBtn, regPasswordInput);
      </script>
  </body>
</html>
