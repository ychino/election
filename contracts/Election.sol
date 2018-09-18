pragma solidity ^0.4.11;

contract Election {
    // Model a Candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }
    
    // Store Candidates
    // Fetch Candidates
    mapping(uint => Candidate) public candidates;
    
    // Store Candidates count
    uint public candidatesCount;

    // Constructor
    constructor() public {
        addCandidate("John");
        addCandidate("Paul");
    }

    function addCandidate(string _name) private {
        candidatesCount ++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }
}