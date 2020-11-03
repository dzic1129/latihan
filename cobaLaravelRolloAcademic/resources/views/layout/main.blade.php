<!doctype html>
<html lang="en">

<head>
	<title>@yield('title')</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<!-- VENDOR CSS -->
	<link rel="stylesheet" href="{{asset('admin/assets/vendor/bootstrap/css/bootstrap.min.css')}}">
	<link rel="stylesheet" href="{{asset('admin/assets/vendor/font-awesome/css/f-awesome.min.css')}}">
	<link rel="stylesheet" href="{{asset('admin/assets/vendor/linearicons/style.css')}}">
	<!-- MAIN CSS -->
	<link rel="stylesheet" href="{{asset('admin/assets/css/main.css')}}">
	<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
	<link rel="stylesheet" href="{{asset('admin/assets/css/demo.css')}}">
	<!-- GOOGLE FONTS -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<!-- ICONS -->
	<link rel="apple-touch-icon" sizes="76x76" href="{{asset('admin/assets/img/apple-icon.png')}}">
	<link rel="icon" type="image/png" sizes="96x96" href="{{asset('admin/assets/img/favicon.png')}}">
	{{-- Toaster --}}
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
	@yield('header')
</head>

<body>
	<!-- WRAPPER -->
	<div id="wrapper">

		{{-- NAVBAR --}}
		@include('layout.includes._navbar')
		{{-- NAVBAR --}}

		{{-- LEFT SIDEBAR --}}
		@include('layout.includes._sidebar')
		{{-- LEFT SIDEBAR --}}

		{{-- MAIN CONTENT --}}
		<div class="main">
			<div class="main-content">
				<div class="container-fluid">
					{{-- Content --}}
					@yield('content')
					{{-- Content --}}
				</div>
			</div>
		</div>
		{{-- MAIN CONTENT --}}

		<div class="clearfix"></div>
		<footer>
			<div class="container-fluid">
				<p class="copyright">Costumized by Dzulfikri Alkautsari | <i class="fa fa-love"></i><a
						href="https://instagram.com/dzulfikri_alfik">Instagram
						:
						dzulfikri_alfik</a>
				</p>
			</div>
		</footer>
	</div>
	<!-- END WRAPPER -->
	<!-- Javascript -->
	<script src="{{asset('admin/assets/vendor/jquery/jquery.min.js')}}"></script>
	<script src="{{asset('admin/assets/vendor/bootstrap/js/bootstrap.min.js')}}"></script>
	<script src="{{asset('admin/assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js')}}"></script>
	<script src="{{asset('admin/assets/scripts/klorofil-common.js')}}"></script>
	{{-- Sweet Alert --}}
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	{{-- Sweet Alert2 --}}
	{{-- <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script> --}}
	{{-- Toaster --}}
	{{-- <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script> --}}
	<script>
		@if(Session::has('status'))
			// toastr.success("{{Session::get('status')}}", "Sukses")
        swal({
          title: "Sukses",
          text: "{{Session::get('status')}}",
          buttons: false,
          icon: "success",
          timer: 2000
        });
		@endif
		@if(Session::has('error'))
			// toastr.success("{{Session::get('error')}}", "Error")
        swal({
          title: "Error",
          text: "{{Session::get('error')}}",
          buttons: false,
          icon: "error",
          timer: 2000
        });
		@endif
	</script>
	@yield('footer')

</body>

</html>