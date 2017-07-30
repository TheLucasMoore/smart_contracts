pragma solidity ^0.4.11;

contract Vote {
  mapping (bytes32 => uint) public votesRecived;
  bytes32[] public candidateList;

  function Vote(bytes32[] candidateNames) {
    candidateList = candidateNames;
  }

  function totalVotesFor(bytes32 candidate) returns (uint) {
    if (validCandidate(candidate) == false) revert();
    return votesRecived[candidate];
  }

  function voteForCandidate(bytes32 candidate) {
    if (validCandidate(candidate) == false) revert();
    votesRecived[candidate] += 1;
  }

  function validCandidate(bytes32 candidate) returns (bool) {
    for(uint i = 0; i < candidateList.length; i++) {
      if (candidateList[i] == candidate) {
        return true;
      }
    }
    return false;
  }
}
