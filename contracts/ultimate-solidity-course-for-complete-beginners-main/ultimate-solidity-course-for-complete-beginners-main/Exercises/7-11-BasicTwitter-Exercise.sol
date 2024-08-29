// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// 1️⃣ Create a Twitter Contract 
// 2️⃣ Create a mapping between user and tweet 
// 3️⃣ Add function to create a tweet and save it in mapping
// 4️⃣ Create a function to get Tweet 
// 5️⃣ Add array of tweets  

contract Twitter {

    mapping(address => string[]) public tweets; //map address to an array of strings eg "0xdda....6a75482d => [Hello World!!, yo, true, what??]"

    function createTweet(string memory _tweet) public {
        tweets [msg.sender ].push(_tweet); //add a tweet to the array that is mapped from an address
    }

    function getTweets (address _owner, uint _i) public view returns (string memory) { //return 1 string
        return tweets[_owner][_i];
    }
    function getAllTweets (address _owner) public view returns (string[] memory){ // return an array of strings
        return tweets[_owner];
    }
}