<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <title>{{ config('app.name'), 'Laravel' }}</title>
        <link href="{{('sass/app.scss')}}" rel="stylesheet" type="text/scss">

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div id="app">
            <nav class="nabvar nabvar-default nabvar-static-top"> </nav>
            @yield('content')
        </div>
        <script src="{{('js/app.js')}}"></script>
    </body>
</html>
