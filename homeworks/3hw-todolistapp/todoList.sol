// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// Insert, update, read from array of structs
contract Todos {
    struct Todo {
        string text;
        bool completed;
    }
    // we are declaring an array of the struct
    Todo[] public todos;

    // creating an array : 'todo'
    function create(string calldata _text) external {
        // pushing _text into the todo array
        todos.push(Todo({text: _text, completed: false}));
    }

    // updating description of the given index of the array
    function updateText(uint256 _index, string calldata _text) external {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }

    function get(uint256 _index) external view returns (string memory, bool) {
        // storage - 29397 gas --- cheaper option
        // memory - 29480 gas
        Todo memory todo = todos[_index];
        return (todo.text, todo.completed);
    }

    // marking as completed/incompleted function
    function toggleCompleted(uint256 _index) external {
        todos[_index].completed = !todos[_index].completed;
    }
}
