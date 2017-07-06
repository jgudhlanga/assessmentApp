@extends('layouts.main')
@section('title')
    Member Profile
@endsection
@section('content')
   <div class="div-center-min">
         @include('includes.alert')
       
         <div class="row">
             <div class="col-md-12"> 
                <h3 class="header-h3">Member Profile</h3>
            </div>
         </div>    
         <div class="row">
             <div class='col-md-3'>Name:</div><div class='col-md-9'>{{$member->name}}</div>
         </div>
         <div class="row">
             <div class='col-md-3'>Surname:</div><div class='col-md-9'>{{$member->surname}}</div>
         </div>
         <div class="row">
             <div class='col-md-3'>ID Number</div><div class='col-md-9'>{{$member->idNumber}}</div>
         </div>
         <div class="row">
             <div class='col-md-3'>Birth Date</div><div class='col-md-9'>{{$member->birthDate}}</div>
         </div>
         <div class="row">
             <div class='col-md-3'>Mobile Number</div><div class='col-md-9'>{{$member->mobileNumber}}</div>
         </div>
         <div class="row">
             <div class='col-md-3'>Language</div><div class='col-md-9'>{{$member->language}}</div>
         </div>
         
         <div class="row">
             <div class="col-md-12"> 
                <h3 class="header-h3">Interests</h3>
            </div>
         </div>
         <div class="row">
             <div class="col-md-12">
                  @if(count($member->memberInterests))
                    @foreach($member->memberInterests as $row)
                        <div class="row">
                            <div class="col-md-6">{{$row->interest->title}}</div>
                        </div>
                    @endforeach
                 @else
                    <div class="col-md-12 text-danger">No interests found</div>
                 @endif
             </div>
             <div class="col-md-12 text-center">
                <a class="btn btn-primary btn-lg" href="{{ route('dashboard') }}">
                    <i class="glyphicon glyphicon-chevron-left">&nbsp;</i>Back
                </a>
                <a class="btn btn-info btn-lg" href="{{ route('getEditMember', ['id'=>$member->id]) }}">
                    <i class="glyphicon glyphicon-pencil">&nbsp;</i>Edit
                <a/>    
                <a class="btn btn-danger btn-lg" onclick="return confirm('Are you sure?')" href="{{ route('delete.member', ['id'=>$member->id]) }}">
                    <i class="glyphicon glyphicon-trash">&nbsp;</i>Delete
                 <a/>
             </div>
         </div>
    </div>    
@stop