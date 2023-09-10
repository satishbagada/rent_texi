<!doctype html>
<html lang="en">
   @include('admin.include.header')
   <body>
       <!-- loader Start -->
       <div id="loading" >
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
            <div class="row no-gutters height-self-center">
               <!--<div class="col-sm-12 align-self-center bg-primary rounded">-->
			   <div class="col-sm-4 col-12 col-lg-4  col-xs-12 align-self-center bg-primary rounded offset-md-4">
                  <div class="row m-0">
                     <div class="col-md-12 bg-white sign-in-page-data">
                        <div class="col-md-12 mt-4 text-center animate__animated animate__fadeInDown">
                           <!--<img src="{{asset('/')}}admin/images/logo.png" class="img-fluid" style="width:100px;" />-->
                           <h3 class="animate__animated animate__flip" style="color:black;font-family:Century Gothic;">Bhade Texi</h3>
                        </div>
                        <div class="sign-in-from">
                           <h3 class="mb-0 text-center">Admin Sign in</h3>
                           <p class="text-center text-dark">Enter your Mobile Number and Procced with your Demo website Admin Account.</p>
                           <form action="{{route('login')}}" class="mt-4" method="post"  id="login-toppup">
                              @csrf
                              <input type="hidden" id="user_id" name="user_id" value="0">
                              <div class="form-group">
                                 <label for="exampleInputEmail1">Enter Email</label>
                                 <input type="text" name="user_email" class="form-control mb-0" id="exampleInputEmail1" placeholder="Enter Email Address">
                                 <small class="text-warning errmob"></small>
                              </div>
                              <div class="form-group animate__animated animate__fadeIn" id="otpsection">
                                 <label for="exampleInputEmail1">Enter Password</label>
                                 <input type="password" name="password" class="form-control mb-0" id="exampleInputEmail1" placeholder="Enter Password">
                                 <small class="text-warning errmobotp"></small>
                              </div>
                              <div class="sign-info text-center">
                                 <button type="submit" class="btn btn-primary d-block w-100 mb-2 grediant" id="buttontext">Sign In</button>
                                 <!-- <span class="text-dark dark-color d-inline-block line-height-2">Don't have an account? <a href="#">Sign up</a></span> -->
                              </div>
                           </form>
                        </div>
                     </div>

                  </div>
               </div>
            </div>
         </div>
      </section>  
      @include('admin.include.footer_Script')
      
      
      
   </body>
</html>
