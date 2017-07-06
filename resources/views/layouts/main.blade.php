<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>@yield('title')</title>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
        <link rel="stylesheet" href="{{ mix('/css/app.css') }}">
        <script type='text/javascript' src="{{mix('js/app.js')}}"></script>
    </head>
    <body>
        @include('includes.header')
        <div class='container custom-content'>
             @yield('content')
        </div>
        
        
        <script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
        <script>
        $(function() {
          $( "#datepicker" ).datepicker();
        });
      </script>

    </body>
</html>
