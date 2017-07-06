<header>
    <nav class="navbar navbar-default custom-nav-bar">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand custom-brand" href="/">Assessment App</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        @isset($currentUser)
            <li><a href="{{ route('dashboard') }}">Dashboard</a></li>
        @endisset    
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" 
             role="button" aria-haspopup="true" aria-expanded="false">
             @isset($currentUser){{ $currentUser->name}}  {{$currentUser->surname}}
             @else Guest
             @endisset
              <span class="caret"></span>
          </a>
          <ul class="dropdown-menu">
              @isset($currentUser)
                <li><a href='{{ route('getLogout') }}'>Logout</a></li>
              @else  
                <li><a href='{{ route('login') }}'>Login</a></li>
                <li><a href='{{ route('getRegister') }}'>Register</a></li>
              @endisset  
            
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
</header>