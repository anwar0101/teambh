<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('css/custom.css') }}" rel="stylesheet">
    <link href="{{ asset('css/w3.css') }}" rel="stylesheet">

</head>
<body>
    <div id="app">

        @include('includes.header')
        {{-- <div class="row">
            <div class="w3-display-container w3-padding" style="height:75px;">
                <h2 class="w3-text-red w3-display-topmiddle" style=""><i class="fa fa-wrench"></i> This site is under Construction <i class="fa fa-spinner w3-spin" style="font-size:26px;"></i></h2>
            </div>
        </div> --}}
        <div class="row">
            <div class="container">
                @include('flash::message')
            </div>
        </div>

        @yield('content')

        @include('includes.footer')

    </div>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}"></script>
    <script src="{{ asset('js/slide.js') }}"></script>
    <script type="text/javascript">
        $('#flash-overlay-modal').modal();
    </script>

    @stack('scripts')
</body>
</html>
