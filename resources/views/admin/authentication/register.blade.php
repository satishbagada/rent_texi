<!doctype html>
<html lang="en">
@include('admin.include.header')

<body>
    <!-- loader Start -->
    <div id="loading">
        <div id="loading-center">
        </div>
    </div>
    <!-- loader END -->
    <!-- Sign in Start -->
    <section class="sign-in-page">
        <div id="container-inside">
            <div class="cube"></div>
            <div class="cube"></div>
            <div class="cube"></div>
            <div class="cube"></div>
            <div class="cube"></div>
        </div>
        <div class="container p-0">
            <div class="row m-0 no-gutters height-self-center">
                <div class="col-sm-4 col-12 col-lg-4  col-xs-12 align-self-center bg-primary rounded offset-md-4">
                    <div class="row m-0">
                        <div class="col-md-12 bg-white sign-in-page-data">
                        
                            <div class="sign-in-from">
                                <h1 class="animate__animated animate__flip mb-0 text-center" style="color:black;font-family:Century Gothic;">Sign Up</h1>
                                <p class="text-center text-dark">Enter your email address and password to access admin panel.</p>
                                <form class="mt-4" action="{{route('register')}}" method="post">
                                    @csrf
                                    <div class="form-group">
                                        <label for="user_name">Your Full Name</label>
                                        <input type="text" class="form-control mb-0" name="user_name" id="user_name" placeholder="Your Full Name">
                                    </div>
                                    <div class="form-group">
                                        <label for="user_email">Email address</label>
                                        <input type="email" class="form-control mb-0" name="user_email" id="user_email" placeholder="Enter email">
                                    </div>
                                    <div class="form-group">
                                        <label for="password">Password</label>
                                        <input type="password" class="form-control mb-0" name="password" id="password" placeholder="Password">
                                    </div>
                                    <div class="d-inline-block w-100">
                                        <div class="custom-control custom-checkbox d-inline-block mt-2 pt-1">
                                            <input type="checkbox" class="custom-control-input" id="customCheck1">
                                            <label class="custom-control-label" for="customCheck1">I accept <a href="#">Terms and Conditions</a></label>
                                        </div>
                                    </div>
                                    <div class="sign-info text-center">
                                        <button type="submit" class="btn btn-primary d-block w-100 mb-2">Sign Up</button>
                                        <span class="text-dark d-inline-block line-height-2">Already Have Account ? <a href="/">Log In</a></span>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <!-- <div class="col-md-7 text-center sign-in-page-image">
                          <div class="sign-in-detail text-white">
                            <a class="sign-in-logo mb-5" href="#"><img src="images/logo-full.png" class="img-fluid" alt="logo"></a>
                              <div class="owl-carousel" data-autoplay="true" data-loop="true" data-nav="false" data-dots="true" data-items="1" data-items-laptop="1" data-items-tab="1" data-items-mobile="1" data-items-mobile-sm="1" data-margin="0">
                                  <div class="item">
                                      <img src="images/login/1.png" class="img-fluid mb-4" alt="logo">
                                      <h4 class="mb-1 text-white">Manage your orders</h4>
                                      <p>It is a long established fact that a reader will be distracted by the readable content.</p>
                                  </div>
                                  <div class="item">
                                      <img src="images/login/1.png" class="img-fluid mb-4" alt="logo">
                                      <h4 class="mb-1 text-white">Manage your orders</h4>
                                      <p>It is a long established fact that a reader will be distracted by the readable content.</p>
                                  </div>
                                  <div class="item">
                                      <img src="images/login/1.png" class="img-fluid mb-4" alt="logo">
                                      <h4 class="mb-1 text-white">Manage your orders</h4>
                                      <p>It is a long established fact that a reader will be distracted by the readable content.</p>
                                  </div>
                              </div>
                          </div>
                      </div> -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Sign in END -->

    @include('admin.include.footer_script')
</body>

</html>