# 📝 Solidity Todo List Smart Contract

A simple decentralized Todo List smart contract built in Solidity. This project demonstrates key Solidity concepts such as enums, structs, mappings, arrays, and events.

## 🚀 Project Overview

This smart contract allows users to:
- Add new todo items
- Update the status of existing todos
- Retrieve a specific todo
- Get a list of all todo IDs

It's a beginner-friendly project aimed at helping developers learn how to work with basic data types and structures in Solidity.

---

## 🛠️ Features

- ✅ Create todos with unique IDs and default `Pending` status
- ✅ Update todo status to `InProgress` or `Completed`
- ✅ Fetch individual todos by ID
- ✅ Track all todos using an array of IDs
- ✅ Emit an event when a new todo is added

---

## 📦 Technologies Used

- Solidity `^0.8.20`
- Remix IDE (for compiling, deploying, and testing)

---

## 🧱 Smart Contract Structure

### Enum
```solidity
enum Status { Pending, InProgress, Completed }
```
---
### Struct
```solidity
struct Todo {
    uint id;
    string content;
    Status status;
}
```

---

### Storage
```solidity
mapping(uint => Todo) public todos;
uint[] public todoIds;
```
---

### 📂 Functions

| Function                                 | Description                                   |
| ---------------------------------------- | --------------------------------------------- |
| `addTodo(string memory _content)`        | Adds a new todo with default status `Pending` |
| `updateStatus(uint _id, Status _status)` | Updates status of a todo by ID                |
| `getTodo(uint _id)`                      | Returns the todo struct (id, content, status) |
| `getAllTodoIds()`                        | Returns an array of all todo IDs              |

---

### 📢 Events
```Solidity
event TodoAdded(uint id, string content);
```

---

### 🧪 Testing

You can test the contract using the built-in Solidity Unit Testing plugin in Remix. 
A sample test file is provided as `TodoList_test.sol.`

---

### 📚 Learning Goals

* Understand the use of `struct`, `enum`, `mapping`, and `array` in `Solidity`

* Differentiate between `memory`, `storage`, and `calldata`

* Use events to track smart contract interactions

* Learn the process of compiling and deploying a smart contract using Remix

---

### 📜 License
MIT License

---
