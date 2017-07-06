<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Member;
use App\Language;
use App\Interest;
use App\MemberInterest;
use DB;

class MemberController extends Controller
{
    public function getMembers(){
        
        $members = Member::all();
        return view('members.index', ['members'=>$members]);
    }
    
    public function getAddMember(){
        $languages = Language::all();
        $interests = Interest::all();
        return view('members.add-edit-member', ['languages'=>$languages, 
            'interests' => $interests]);
    }
    
    public function getEditMember($id){
        $languages = Language::all();
        $interests = Interest::all();
        $member = Member::findOrFail($id);
        return view('members.add-edit-member', ['languages'=>$languages,
            'interests' => $interests, 'member' => $member]);
    }
    
    public function showMember($id){
        $member = Member::findOrFail($id);
        return view('members.member-profile', ['member' => $member]);
    }
    public function postMember(Request $request){
        
         //validate request
        $this->validate($request, [
            'name'=>'required','surname'=>'required','idNumber' => 'required|unique:members',
        ]);
        
        $member = new Member();
        $member->name = $request['name'];
        $member->surname = $request['surname'];
        $member->idNumber = $request['idNumber'];
        $member->mobileNumber = $request['mobileNumber'];
        $member->language = $request['language'];
        $member->birthDate = $request['birthDate'];
        $member->mobileNumber = $request['mobileNumber'];
        $member->save();
        if($member->save()){
            //save the interests of the member
             $this->createInterests($member, $request['interests']);
           //redirect to the dashboard
          return redirect()->route('dashboard')->with(['message' => 'Member successfully added']);
        }
    }
    
    public function updateMember(Request $request, $id){
        
         //validate request
        $this->validate($request, [
            'name'=>'required','surname'=>'required','idNumber' => 'required',
        ]);
        
        $member = Member::findOrFail($id);
        $member->name = $request['name'];
        $member->surname = $request['surname'];
        $member->idNumber = $request['idNumber'];
        $member->mobileNumber = $request['mobileNumber'];
        $member->language = $request['language'];
        $member->birthDate = $request['birthDate'];
        $member->mobileNumber = $request['mobileNumber'];
        $member->update();
        if($member->update()){
            //save the interests of the member
            $this->createInterests($member, $request['interests']);
           //redirect to the dashboard
          return redirect()->route('dashboard')->with(['message' => 'Member successfully added']);
        }else{
            return redirect()->back()->with(['error' => 'Error: something went wrong']);
        }
    }
    
    public function createInterests($member, $interests){
        if(isset($interests) && count($interests > 0)){
            //clear the user member interests
            DB::table('member_interests')->where('member_id', '=', $member->id)->delete();
            foreach($interests as $id){
                if($id > 0)
                {
                    $interest = new MemberInterest(['interest_id' => $id]);
                    $member->addInterest($interest);  
                }
            }
        }
    }
    
    public function deleteMember($id){
        $member = Member::find($id)->first();
        if(isset($member->id)){
            $member->delete();
            return redirect()->route('dashboard')->with(['message' =>' Successfully Deleted ']);
        }else{
            return redirect()->route('dashboard')->with(['error' => ' Error: Not deleted ']);
        }
        
    }
}
