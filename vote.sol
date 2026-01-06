// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;
contract VoteSystem{
    address public administrator;
    constructor(){
administrator=msg.sender;
votingclose=false;
     candidate1=0;
     candidate2=0;
    }
     
    bool  votingclose;
   uint public candidate1 ;
   uint public  candidate2;
//for a voter to vote only once
 mapping(address => bool)  votingdone;
   
function vote(uint candidateId) public{
    require(votingclose==false);
    require(votingdone[msg.sender]==false,"you have already voted");
    require(candidateId==1||candidateId==2,"error in finding candidate");
    if(candidateId==1){
       candidate1=candidate1+1;
    }
    else{
        candidate2=candidate2+1;
    }
    votingdone[msg.sender]=true;
}
function getvotecount() public view returns(uint,uint){
    return(candidate1,candidate2);
}
function startvoting() public {
    require(msg.sender==administrator);
    votingclose=false;}
function stopvoting () public {
    require(msg.sender==administrator);
    votingclose=true;
}
}
