﻿<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    
    <title>eWallet - User Dashboard</title>

    <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
       <!--CUSTOM BASIC STYLES-->
    <link href="assets/css/basic.css" rel="stylesheet" />
    <!--CUSTOM MAIN STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
</head>
<body>
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="dashboard.php">eWallet</a>
            </div>

            <div class="header-right">

                <a href="login.php" class="btn btn-danger" title="Logout"><b style="vertical-align: center;">  Logout  </b><i class="fa fa-exclamation-circle fa-2x"></i></a>

            </div>
        </nav>
        <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                    <li>
                        <div class="user-img-div">
                            <img src="assets/img/user.png" class="img-thumbnail" />

                            <div class="inner-text">
                                Jhon Deo Alex
                            <br />
                                <small>Last Activity : 12/04/19 </small>
                            </div>
                        </div>

                    </li>
                    <li>
                        <a class="active-menu" href="dashboard.php"><i class="fa fa-dashboard "></i>Dashboard</a>
                    </li>
                       <li>
                        <a  href="store.php"><i class="fa fa-shopping-cart "></i>Store</a>
                    </li>
                      
                    </ul>

            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper">
            <div id="page-inner">
                
                <!-- /. ROW  -->
                <div class="row">
                    <div class="col-md-4">
                        <div class="main-box btn-primary">
                            <a href="#" data-toggle="modal" data-target="#moneyModal">
                                <i class="fa fa-bolt fa-5x"></i>
                                <h5>Money Transfer</h5>
                            </a>
                        </div>
                    </div>

                    <!-- The Modal -->
                        <div class="modal fade " id="moneyModal">
                          <div class="modal-dialog">
                            <div class="modal-content">

                              <!-- Modal Header -->
                              <div class="modal-header">
                                <h4 class="modal-title">Money Transfer</h4>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                              </div>

                              <!-- Modal body -->
                              <div class="modal-body">
                                Enter Details

                                        <div class="form-group input-group">
                                             <span class="input-group-addon"><i class="fa fa-user"  ></i></span>
                                             <input type="text" class="form-control"  placeholder="Enter Reciever's Email" />
                                        </div>
                                        <div class="form-group input-group">
                                             <span class="input-group-addon"><i class="fa fa-money"  ></i></span>
                                             <input type="number" class="form-control"  placeholder="Enter Amount" />
                                        </div>
                              </div>

                              <!-- Modal footer -->
                              <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary" data-dismiss="modal">Transfer</button>
                              </div>

                            </div>
                          </div>
                        </div>

                    <div class="col-md-4">
                        <div class="main-box btn-danger">
                            <a href="#" data-toggle="modal" data-target="#billModal">
                                <i class="fa fa-plug fa-5x"></i>
                                <h5>Bill Payment</h5>
                            </a>
                        </div>
                    </div>

                    <div class="modal fade " id="billModal">
                          <div class="modal-dialog">
                            <div class="modal-content">

                              <!-- Modal Header -->
                              <div class="modal-header">
                                <h4 class="modal-title">Bill Payment</h4>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                              </div>

                              <!-- Modal body -->
                              <div class="modal-body">
                                Enter Details

                                        <div class="form-group input-group">
                                             <span class="input-group-addon"><i class="fa fa-user"  ></i></span>
                                             <select class="form-control">
                                                <option>
                                                    <p>Electricity</p>
                                                </option>
                                                <option>
                                                    <p>Water</p>
                                                </option>
                                                <option>
                                                    <p>Gas Supply</p>
                                                </option>
                                                <option>
                                                    <p>Internet</p>
                                                </option>
                                                <option>
                                                    <p>Telephone</p>
                                                </option>
                                            </select>
                                        </div>
                                        <div class="form-group input-group">
                                             <span class="input-group-addon"><i class="fa fa-money"  ></i></span>
                                             <input type="number" class="form-control"  placeholder="Enter Bill ID" />
                                        </div>
                              </div>

                              <!-- Modal footer -->
                              <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary" data-dismiss="modal">Pay Bill</button>
                              </div>

                            </div>
                          </div>
                        </div>


                    <div class="col-md-4">
                        <div class="main-box btn-success">
                            <a href="#" data-toggle="modal" data-target="#balanceModal">
                                <i class="fa fa-dollar fa-5x"></i>
                                <h5>2,000 Balance</h5>
                            </a>
                        </div>
                    </div>

                    <div class="modal fade " id="balanceModal">
                          <div class="modal-dialog">
                            <div class="modal-content">

                              <!-- Modal Header -->
                              <div class="modal-header">
                                <h4 class="modal-title">Account Balance</h4>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                              </div>

                              <!-- Modal body -->
                              <div class="modal-body">
                                Your current Balance Details

                                        <div class="form-group input-group">
                                             <h4 type="text"   >2,000</h4>
                                        </div>
                                        <div class="form-group input-group">
                                             <span class="input-group-addon"><i class="fa fa-history"  ></i></span>
                                             <p type="text" class="form-control"  >This is a dummy transaction history</p>
                                        </div>
                                        <div class="form-group input-group">
                                             <span class="input-group-addon"><i class="fa fa-history"  ></i></span>
                                             <p type="text" class="form-control"  >This is a dummy transaction history</p>
                                        </div>
                                        <div class="form-group input-group">
                                             <span class="input-group-addon"><i class="fa fa-history"  ></i></span>
                                             <p type="text" class="form-control"  >This is a dummy transaction history</p>
                                        </div>
                                        <div class="form-group input-group">
                                             <span class="input-group-addon"><i class="fa fa-history"  ></i></span>
                                             <p type="text" class="form-control"  >This is a dummy transaction history</p>
                                        </div>
                              </div>

                              <!-- Modal footer -->
                              <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary" data-dismiss="modal">Transfer</button>
                              </div>

                            </div>
                          </div>
                        </div>

                    <div class="col-md-4">
                        <div class="main-box  btn-primary">
                            <a href="#" data-toggle="modal" data-target="#withdrawModal">
                                <i class="fa fa-money fa-5x"></i>
                                <h5>Withdraw Money</h5>
                            </a>
                        </div>
                    </div>

                    <div class="modal fade " id="withdrawModal">
                          <div class="modal-dialog">
                            <div class="modal-content">

                              <!-- Modal Header -->
                              <div class="modal-header">
                                <h4 class="modal-title">Withdraw Money</h4>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                              </div>

                              <!-- Modal body -->
                              <div class="modal-body">
                                Enter Details

                                        <div class="form-group input-group">
                                             <span class="input-group-addon"><i class="fa fa-user"  ></i></span>
                                             <input type="text" class="form-control"  placeholder="Enter retailer's Email" />
                                        </div>
                                        <div class="form-group input-group">
                                             <span class="input-group-addon"><i class="fa fa-money"  ></i></span>
                                             <input type="number" class="form-control"  placeholder="Enter Amount" />
                                        </div>
                              </div>

                              <!-- Modal footer -->
                              <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary" data-dismiss="modal">Transfer</button>
                              </div>

                            </div>
                          </div>
                        </div>

                    <div class="col-md-4">
                        <div class="main-box btn-danger">
                            <a href="#" data-toggle="modal" data-target="#depositModal">
                                <i class="fa fa-money fa-5x"></i>
                                <h5>Deposit Money</h5>
                            </a>
                        </div>
                    </div>

                    <div class="modal fade " id="depositModal">
                          <div class="modal-dialog">
                            <div class="modal-content">

                              <!-- Modal Header -->
                              <div class="modal-header">
                                <h4 class="modal-title">Deposit Money</h4>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                              </div>

                              <!-- Modal body -->
                              <div class="modal-body">
                                Enter Details

                                        <div class="form-group input-group">
                                             <span class="input-group-addon"><i class="fa fa-user"  ></i></span>
                                             <input type="text" class="form-control"  placeholder="Enter Retailer's Email" />
                                        </div>
                                        <div class="form-group input-group">
                                             <span class="input-group-addon"><i class="fa fa-money"  ></i></span>
                                             <input type="number" class="form-control"  placeholder="Enter Amount" />
                                        </div>
                              </div>

                              <!-- Modal footer -->
                              <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary" data-dismiss="modal">Transfer</button>
                              </div>

                            </div>
                          </div>
                        </div>

                    <div class="col-md-4">
                        <div class="main-box btn-success">
                            <a href="store.php">
                                <i class="fa fa-shopping-cart fa-5x"></i>
                                <h5>Store</h5>
                            </a>
                        </div>
                    </div>

                </div>
                <!-- /. ROW  -->

            </div>
            <!-- /. PAGE INNER  -->
        </div>
        <!-- /. PAGE WRAPPER  -->
    </div>
    <!-- /. WRAPPER  -->

    <div id="footer-sec">
        &copy; 2019 eWallet | Design By : <a>IT F18</a>
    </div>
    <!-- /. FOOTER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
       <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
    


</body>
</html>
