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
            left: 55%;
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
      <a class="navbar-brand" href="/usersettings/${accountNumber}"><strong>UBI</strong></a>
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
          <img src="/images/carousel4.jpg" alt="Los Angeles" width="1000" height="560">
          <div class="registration-form col-md-7">
            <!-- Your registration form fields go here -->
            <h6 class="text-danger fa-lg" style="display: inline-block; margin-left: 33%;">${command}</h6>
            <ul class="nav nav-tabs" id="userTabs" role="tablist">
              <li class="nav-item">
                <a
                  class="nav-link active"
                  id="update-tab"
                  data-toggle="tab"
                  href="#update"
                  role="tab"
                  aria-controls="update"
                  aria-selected="true"
                  ><strong>Update</strong></a
                >
              </li>
              <li class="nav-item">
                <a
                  class="nav-link"
                  id="deactivate-tab"
                  data-toggle="tab"
                  href="#deactivate"
                  role="tab"
                  aria-controls="deactivate"
                  aria-selected="false"
                  ><strong>Deactivate</strong></a
                >
              </li>
              <li class="nav-item">
                <a
                  class="nav-link"
                  id="delete-tab"
                  data-toggle="tab"
                  href="#delete"
                  role="tab"
                  aria-controls="delete"
                  aria-selected="false"
                  ><strong>Delete</strong></a
                >
              </li>
              <li class="nav-item">
                <a
                  class="nav-link"
                  id="password-tab"
                  data-toggle="tab"
                  href="#changepassword"
                  role="tab"
                  aria-controls="changepassword"
                  aria-selected="false"
                  ><strong>Change Password</strong></a
                >
              </li>
              <li class="nav-item">
                <a
                  class="nav-link"
                  id="view-tab"
                  data-toggle="tab"
                  href="#view"
                  role="tab"
                  aria-controls="view"
                  aria-selected="false"
                  ><strong>View User</strong></a
                >
              </li>
            </ul>
            <div class="tab-content" id="updateTabContent">
              <!-- Update Form -->
              <div
                class="tab-pane fade show active"
                id="update"
                role="tabpanel"
                aria-labelledby="update-tab"
              >
                <form id="updateForm" method="post" action="/update/${accountNumber}">
                  <br><h4 class="text-warning text-center"><strong>-- Update Your Details --</strong></h4>
                  <!-- UserName (No Numbers or Special Characters Except ".") -->
                  <div class="form-group">
                    <label for="UserName" class="fa fa-user-tie fa-md text-warning">&nbsp; &nbsp;Username</label>
                    <input
                      type="text"
                      class="form-control"
                      id="username"
                      name="username"
                      placeholder="${name}"
                      required
                    />
                  </div>
                  <div class="form-group">
                    <label for="mobileNumber"class="fa fa-phone fa-md text-warning">&nbsp; &nbsp;Mobile Number</label>
                    <input
                      type="tel"
                      class="form-control"
                      id="mobileNumber"
                      name="mobileNo"
                      required
                    />
                  </div>
                  <div class="form-group">
                    <label for="city"class="fa fa-city fa-md text-warning">&nbsp; &nbsp;City</label>
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
                  <button type="submit" class="btn btn-primary"><strong>Update</strong></button>
                </form>
              </div>

              <!-- Deactivate Form -->
              <div
                class="tab-pane fade"
                id="deactivate"
                role="tabpanel"
                aria-labelledby="deactivate-tab"
              >
                <form id="deactivateForm" method="post" action="/deactivate/${accountNumber}">
                    <br><h4 class="text-warning text-center"><strong>-- Deactivate Your Account --</strong></h4>
                  <div class="form-group">
                    <br>
                    <label for="accountNumber" class="fa fa-lg text-warning">Account Number :   ${accountNumber}</label>
                  </div>
                  <!-- Password (Complex Requirements) -->
                  <div class="form-group">
                    <label for="password" class="fa fa-lock fa-md text-white">&nbsp; &nbsp;Password</label>
                    <div class="input-group">
                      <input
                        type="password"
                        class="form-control"
                        id="deactivatepassword"
                        name="password"
                        required
                      />
                      <div class="input-group-append">
                        <button class="btn btn-outline-warning" type="button" id="toggleDeactivatePassword">
                          <i class="fa fa-eye"></i>
                        </button>
                      </div>
                    </div>
                  </div>
                  <h6 class="text-warning"><strong>Are You Sure to Deactivate Your Account ?</strong></h6>
                  <button type="submit" class="btn btn-primary">
                    <strong>Deactivate</strong>
                  </button>
                  <a class="nav-link text-white fa-md bg-danger" href="/usersettings/${accountNumber}" style="margin-right: 79%;margin-top: 2%; border-radius: 5%;"><strong><i class="fas fa-times-circle">&nbsp;</i>No</strong></a>
                </form>
              </div>

              <!-- Password Changing Form -->
              <div
                class="tab-pane fade"
                id="changepassword"
                role="tabpanel"
                aria-labelledby="password-tab"
              >
                <form id="passwordForm" method="post" action="/password/${accountNumber}">
                    <br><h4 class="text-warning text-center"><strong>-- Change Your Password --</strong></h4>
                  <div class="form-group">
                    <br>
                    <label for="accountNumber" class="fa fa-lg text-warning">Account Number :   ${accountNumber}</label>
                  </div>
                  <!-- Password (Complex Requirements) -->
                  <div class="form-group">
                    <label for="password" class="fa fa-lock fa-md text-white">&nbsp; &nbsp;Enter Your Password</label>
                    <div class="input-group">
                      <input
                        type="password"
                        class="form-control"
                        id="changenewpassword"
                        name="newpassword"
                        required
                        pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
                        title="Password must contain at least one number, one uppercase and lowercase letter, and at least 8 or more characters"
                      />
                      <div class="input-group-append">
                        <button class="btn btn-outline-warning" type="button" id="toggleChangeNewPassword">
                          <i class="fa fa-eye"></i>
                        </button>
                      </div>
                    </div>
                  </div>
                  <!-- Password (Complex Requirements) -->
                  <div class="form-group">
                    <label for="password" class="fa fa-lock fa-md text-white">&nbsp; &nbsp;Confirm Your Old Password</label>
                    <div class="input-group">
                      <input
                        type="password"
                        class="form-control"
                        id="changeoldpassword"
                        name="oldpassword"
                        required
                      />
                      <div class="input-group-append">
                        <button class="btn btn-outline-danger" type="button" id="toggleChangeOldPassword">
                          <i class="fa fa-eye"></i>
                        </button>
                      </div>
                    </div>
                  </div>
                  <button type="submit" class="btn btn-primary">
                    <strong>Change Password</strong>
                  </button>
                </form>
              </div>

              <!-- View Form -->
              <div
                class="tab-pane fade"
                id="view"
                role="tabpanel"
                aria-labelledby="view-tab"
              >
              <div>
                <br><h4 class="text-warning text-center fa-2x"><strong>-- Account Details --</strong></h4>
                <br><table class="table table-dark table-hover">
                  <thead>
                    <tr>
                      <th>Accno</th>
                      <th>Username</th>
                      <th>Mobile Number</th>
                      <th>City</th>
                      <th>Balance</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>${customer.accountNo}</td>
                      <td>${customer.username}</td>
                      <td>${customer.mobileno}</td>
                      <td>${customer.address}</td>
                      <td>${customer.amount}</td>
                    </tr>
                  </tbody>
                </table>
              </div>
              </div>

              <!-- Delete Form -->
              <div
                class="tab-pane fade"
                id="delete"
                role="tabpanel"
                aria-labelledby="delete-tab"
              >
                <form id="deleteForm" method="post" action="/delete/${accountNumber}">
                    <br><h4 class="text-warning text-center"><strong>-- Delete Your Account --</strong></h4>
                  <div class="form-group">
                    <br>
                    <label for="accountNumber" class="fa fa-lg text-warning">Account Number :   ${accountNumber}</label>
                  </div>
                  <!-- Password (Complex Requirements) -->
                  <div class="form-group">
                    <label for="password" class="fa fa-lock fa-md text-white">&nbsp; &nbsp;Confirm Your Old Password</label>
                    <div class="input-group">
                      <input
                        type="password"
                        class="form-control"
                        id="deleteformpassword"
                        name="password"
                        required
                      />
                      <div class="input-group-append">
                        <button class="btn btn-outline-warning" type="button" id="toggleDeleteFormPassword">
                          <i class="fa fa-eye"></i>
                        </button>
                      </div>
                    </div>
                  </div>
                  <h6 class="text-warning"><strong>Do you want to permanently delete your account ?</strong></h6>
                  <button type="submit" class="btn btn-primary">
                    <strong> Delete  </strong>
                  </button>
                  <a class="nav-link text-white fa-md bg-danger" href="/usersettings/${accountNumber}" style="margin-right: 84%;margin-top: 2%; border-radius: 5%;"><strong><i class="fas fa-times-circle">&nbsp;</i>No</strong></a>
                </form>
              </div>
        </div>
        </div>
      </div>
    </div>
    <script>
      const togglePasswordBtn = document.getElementById('togglePassword');
      const passwordInput = document.getElementById('password');
      const toggleDeactivatePasswordBtn = document.getElementById('toggleDeactivatePassword');
      const deactivatePasswordInput = document.getElementById('deactivatepassword');
      const toggleChangeNewPasswordBtn = document.getElementById('toggleChangeNewPassword');
      const newpasswordInput = document.getElementById('changenewpassword');
      const toggleChangeOldPasswordBtn = document.getElementById('toggleChangeOldPassword');
      const oldPasswordInput = document.getElementById('changeoldpassword');
      const toggleDeleteFormPasswordBtn = document.getElementById('toggleDeleteFormPassword');
      const deleteformPasswordInput = document.getElementById('deleteformpassword');
    
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
      togglePasswordVisibility(toggleDeactivatePasswordBtn, deactivatePasswordInput);
      togglePasswordVisibility(toggleChangeNewPasswordBtn, newpasswordInput);
      togglePasswordVisibility(toggleChangeOldPasswordBtn, oldPasswordInput);
      togglePasswordVisibility(toggleDeleteFormPasswordBtn, deleteformPasswordInput);
    </script>
  </body>
  <div class="jumbotron text-center bg-dark" style="margin-bottom: 0; margin-left: -1%; margin-right: -1%;">
    <div class="container footer text-white">
     <strong class="fa-lg">&copy; 2023 United Bank of India</strong> 
    </div>
  </div>
</html>
