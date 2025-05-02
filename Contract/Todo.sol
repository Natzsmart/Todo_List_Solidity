// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract TodoList {
    // 1. Enum for status
    enum Status { 
        Pending, 
        InProgress, 
        Completed 
    }

    // 2. Todo struct
    struct Todo {
        uint id;
        string content;
        Status status;
    }

    // 3. Mapping from ID to Todo
    mapping(uint => Todo) public todos;

    // Array to track all todo IDs
    uint[] public todoIds;

    // Counter to assign unique IDs
    uint private nextId;

    // 5. Event for new todos
    event TodoAdded(uint id, string content);

    // 4. Add new todo
    function addTodo(string memory _content) public {
        todos[nextId] = Todo(nextId, _content, Status.Pending);
        todoIds.push(nextId);
        emit TodoAdded(nextId, _content);
        nextId++;
    }

    // Update status of a todo
    function updateStatus(uint _id, Status _status) public {
        require(_id < nextId, "Todo does not exist");
        todos[_id].status = _status;
    }

    // Get a specific todo item
    function getTodo(uint _id) public view returns (uint, string memory, Status) {
        require(_id < nextId, "Todo does not exist");
        Todo memory t = todos[_id];
        return (t.id, t.content, t.status);
    }

    // Get all todo IDs (optional helper)
    function getAllTodoIds() public view returns (uint[] memory) {
        return todoIds;
    }
}
