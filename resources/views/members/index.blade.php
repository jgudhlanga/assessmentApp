@extends('layouts.main')
@section('title')
    Members
@endsection

@section('content')
<div class="row">
    <div class="col-md-12">
        <h3 class="header-h3">Members List</h3>
    </div>
    <div class="col-md-12 text-right">
        <a class="btn btn-sm btn-info">
            <span class="badge">{{count($members)}}</span>&nbsp;Total Members
        </a>
        <a class="btn btn-sm btn-success" type="button" href="{{ route('getAddMember') }}" >
            <i class="glyphicon glyphicon-plus">&nbsp;</i>Add New Member
        </a>
    </div>
    <div class="col-md-12 margin-top">
        @include('includes.alert')
        @if(count($members))
            @foreach($members as $member)
            <div class="col-md-3 col-sm-12">
                <div class="name-tag">
                    <div class="header">{{$member->name}} {{$member->surname}}</div>
                    <div class="details">
                        <div class="title">ID Number</div>
                        <div class="value">{{$member->idNumber}}</div><br/>
                        <div class="title">Birth Date</div>
                        <div class="value">{{($member->birthDate)}}</div><br/>
                        <div class="title">Mobile Number</div>
                        <div class="value">{{$member->mobileNumber}}</div><br/>
                        <div class="title">Language</div>
                        <div class="value">{{$member->language}}</div><br/>
                    </div>
                    <div class="text-right">
                        <a class="btn btn-success btn-xs" href="{{ route('profile.view', ['id' => $member->id]) }}" >
                           <i class="glyphicon glyphicon-eye-open">&nbsp;</i>View
                       <a/>
                       <a class="btn btn-info btn-xs" href="{{ route('getEditMember', ['id'=>$member->id]) }}">
                           <i class="glyphicon glyphicon-pencil">&nbsp;</i>Edit
                       <a/>    
                       <a class="btn btn-danger btn-xs" onclick="return confirm('Are you sure you want to delete?')" href="{{ route('delete.member', ['id'=>$member->id]) }}">
                           <i class="glyphicon glyphicon-trash">&nbsp;</i>Delete
                        <a/>
                    </div>
                </div>
            </div>
            @endforeach
        @else
            <div class="text-center text-danger">There are no members</div>
        @endif    
    </div>
</div>
@stop
