@extends('layouts.main')
@section('title')
    Registration
@endsection
@section('content')
<div class="row">
    <div class="div-center-min">
         @include('includes.alert')
        <form method="post" action="{{ route('postRegister') }}">
            {{ csrf_field() }}
            <div class="col-md-12 text-center"> <h3 class="header-h3">Register User</h3></div>
            <div class="form-group col-md-12 {{ $errors->has('name') ? 'has-error' : '' }}">
                <label for="name" class="col-md-2" >Name</label>
                <div class="col-md-10">
                    <input type="text" class="form-control input-sm" name="name" id="name" value="{{old('name')}}" required/> 
                </div>
            </div>
            <div class="form-group col-md-12 {{ $errors->has('surname') ? 'has-error' : '' }}">
                <label for="surname" class="col-md-2">Surname</label>
                <div class="col-md-10">
                    <input type="text" class="form-control input-sm" name="surname" value="{{old('surname')}}" required id="surname"/>
                </div>
            </div>
            <div class="form-group col-md-12 {{ $errors->has('email') ? 'has-error' : '' }}">
                <label for="email" class="col-md-2">Email</label>
                <div class="col-md-10">
                    <input type="text" class="form-control input-sm" name="email" value="{{old('email')}}" required id="email"/>
                </div>
            </div>
            <div class="form-group col-md-12 {{ $errors->has('password') ? 'has-error' : '' }}">
                <label for="password" class="col-md-2">Password</label>
                <div class="col-md-10">
                    <input type="password" class="form-control input-sm" name="password" value="{{old('password')}}" required id="password"/>
                </div>
            </div>
            <div class="text-center">
                <button type="submit" class="btn btn-primary btn-lg">Save</button>
            </div>
        </form>
    </div>
</div>

@endsection