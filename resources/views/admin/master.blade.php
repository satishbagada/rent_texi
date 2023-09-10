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
    <!-- Wrapper Start -->
    <div class="wrapper">
        @include('admin.include.sidebar')
        <!-- TOP Nav Bar -->
        @include('admin.include.navbar')
        <!-- TOP Nav Bar END -->

        <!-- Page Content  -->
        <div id="content-page" class="content-page">
            @yield('content')
        </div>
    </div>
    <!-- Wrapper END -->
    <!-- Footer -->
    @include('admin.include.footer')
    <!-- Footer END -->

    
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    @include('admin.include.footer_script')
    @yield('script')
</body>
</html>