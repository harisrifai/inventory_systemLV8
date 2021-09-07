<!DOCTYPE html>
<html lang="en">


<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>Admin - Login</title>

		@include('admin.layouts.partials.styles')
    </head>
    <body>

		<!-- Main Wrapper -->
        <div class="main-wrapper login-body">
            <div class="login-wrapper">
            	<div class="container">

                	<div class="loginbox">

                    	<div class="login-left">
							<img class="img-fluid" src="admin/assets/img/logo-new.png" alt="Logo">
                        </div>
                        <div class="login-right">
							<div class="login-right-wrap">
								<h1>Login</h1>
                                <p class="account-subtitle">Access to our dashboard</p>
                                @include('validate')

								<!-- Form -->
                                <form action="{{ route('login') }}" method="POST">
                                    @csrf
									<div class="form-group">
										<input name="email" class="form-control" type="text" placeholder="E-mail">
									</div>
									<div class="form-group">
										<input name="password" class="form-control" type="text" placeholder="Password">
									</div>
									<div class="form-group">
										<button class="btn btn-primary btn-block" type="submit">Login</button>
									</div>
								</form>
								<!-- /Form  

								<div class="text-center forgotpass"><a href="forgot-password.html">Forgot Password?</a></div>
								<div class="login-or">
									<span class="or-line"></span>
									<span class="span-or">or</span>
								</div>

								 
								<div class="social-login">
									<span>Login with</span>
									<a href="#" class="facebook"><i class="fa fa-facebook"></i></a><a href="#" class="google"><i class="fa fa-google"></i></a>
								</div>
								 

								<div class="text-center dont-have">Don’t have an account? <a href="{{ route('register') }}">Register</a></div>  -->
							</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		<!-- /Main Wrapper -->

		@extends('admin.layouts.partials.scripts')

    </body>

</html>
