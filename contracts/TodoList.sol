// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract TodoList {
    uint256 public taskCount = 0;


    struct Task {
        uint id;
        string content;
        bool completed;
    }

    mapping (uint => Task) public Tasks;
    
constructor () public {
    createTask("hey you!");
}

    function createTask( string memory _content) public {
        taskCount++;
        Tasks[taskCount]=Task(taskCount,_content,false);
    }
}
