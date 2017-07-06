@extends('layouts.main')
@section('title')
    Registration
@endsection
@section('content')
<div class="row">
    <div class="div-center-min">
        @include('includes.alert') 
        <form method="post" 
              action="@isset($member){{ route('updateMember', ['id' => $member->id]) }} @else {{ route('postMember') }} @endisset">
            {{ csrf_field() }}
            <div class="col-md-12 text-center">
                <h3 class="header-h3">
                    @isset($member)Edit Member
                    @else Create Member
                    @endisset
                </h3>
            </div>
            <div class="form-group col-md-12 {{ $errors->has('name') ? 'has-error' : '' }}">
                <label for="name" class="col-md-3" >Name</label>
                <div class="col-md-9">
                    <input type="text" class="form-control input-sm" name="name"
                           id="name" @isset($member)value="{{$member->name }}" @else value="{{ old('name')}}" @endisset required/> 
                </div>
            </div>
            <div class="form-group col-md-12 {{ $errors->has('surname') ? 'has-error' : '' }}">
                <label for="surname" class="col-md-3">Surname</label>
                <div class="col-md-9">
                    <input type="text" class="form-control input-sm" name="surname" 
                           @isset($member)value="{{$member->surname }}" @else value="{{ old('surname')}}" @endisset required id="surname"/>
                </div>
            </div>
            <div class="form-group col-md-12">
                <label for="idNumber" class="col-md-3">ID No.</label>
                <div class="col-md-9">
                    <input type="text" class="form-control input-sm" name="idNumber"
                           @isset($member)value="{{$member->idNumber }}" @else value="{{ old('idNumber')}}" @endisset required id="idNumber"/>
                </div>
            </div>
            <div class="form-group col-md-12">
                <label for="birthDate" class="col-md-3">Birth Date</label>
                <div class="col-md-9">
                    <input type="date" class="form-control input-sm" name="birthDate"
                           @isset($member)value="{{$member->birthDate }}" @else value="{{ old('birthDate')}}" @endisset id="birthDate"/>
                </div>
            </div>
            <div class="form-group col-md-12">
                <label for="mobileNumber" class="col-md-3">Mobile No.</label>
                <div class="col-md-9">
                    <input type="test" class="form-control input-sm" name="mobileNumber" 
                           @isset($member)value="{{$member->mobileNumber }}" @else value="{{ old('mobileNumber')}}" @endisset id="mobileNumber"/>
                </div>
            </div>
             <div class="form-group col-md-12">
                <label for="language" class="col-md-3">Language</label>
                <div class="col-md-9">
                    <select class="form-control input-sm" name="language" >
                        <option value="">-- select language--</option>
                        @if(count($languages))
                            @foreach($languages as $language)
                            <option value="{{ $language->language }}">{{ $language->language }}</option>
                            @endforeach
                        @endif
                    </select>
                </div>
            </div>
            <div class="form-group col-md-12">
                <label for="interests" class="col-md-3">Interests</label>
                <div class="col-md-9">
                    <select class="form-control input-sm" name="interests[]" multiple="">
                        <option value="">-- select interests--</option>
                        @if(count($interests))
                            @foreach($interests as $interest)
                            <option value="{{ $interest->id }}">{{ $interest->title }}</option>
                            @endforeach
                        @endif
                    </select>
                </div>
            </div>
            <div class="text-center">
                <a type="button" class="btn btn-warning btn-lg" href="{{ route('dashboard') }}">Cancel</a>
                <button type="submit" class="btn btn-primary btn-lg">
                   @isset($member) Update @else Save @endisset
                </button>
            </div>
        </form>
    </div>
</div>

@endsection