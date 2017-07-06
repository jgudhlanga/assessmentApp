@extends('layouts.main')
@section('title')
    Login
@endsection
@section('content')
<div class="row">
    <div class="div-center-min">
         @include('includes.alert')
        
        <form method="post" action="{{ route('login') }}">
            {{ csrf_field() }}
            <div class="col-md-12 text-center"> <h3 class="header-h3">Login</h3></div>
            <div class="form-group col-md-12 {{ $errors->has('email') ? 'has-error' : '' }}">
                <label for="email" class="col-md-2">Email</label>
                <div class="col-md-10">
                    <input type="text" class="form-control input-sm" name="email" value="{{old('name')}}" required id="email"/>
                </div>
            </div>
            <div class="form-group col-md-12 {{ $errors->has('email') ? 'has-error' : '' }}">
                <label for="password" class="col-md-2">Password</label>
                <div class="col-md-10">
                    <input type="password" class="form-control input-sm" name="password" required id="password"/>
                </div>
            </div>
            <div class="text-center">
                <button type="submit" class="btn btn-primary btn-lg">Login</button>
            </div>
        </form>
    </div>
</div>

@endsection