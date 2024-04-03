// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

// 1️⃣ Create a Twitter Contract 
// 2️⃣ Create a mapping between user and tweet 
// 3️⃣ Add function to create a tweet and save it in mapping
// 4️⃣ Create a function to get Tweet 
// 5️⃣ Add array of tweets 

// normal tweet using string
contract Twitter {
    mapping (address => string) public tweets;

    function createTweet(string memory _tweets) public{
        tweets[msg.sender]=_tweets;
        
    }
    function get(address _owner)public view returns (string memory){
        return tweets[_owner];
    }

}

// tweet using array to add  multiple tweets to owner

contract Twitter2{
    mapping (address => string [] ) public tweets;

    function createTweet(string memory _tweet) public{
        tweets[msg.sender].push(_tweet);
    }

    function getAllTweets(address _owner) public view returns (string [] memory){
        return tweets[_owner];
        
    }
    function getTweet(address _owner, uint _index)public view returns (string memory){
        return tweets[_owner][_index];
    }

}
