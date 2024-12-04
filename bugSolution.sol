function transferOwnership(newOwner) {
  require(newOwner != address(0), "Ownable: new owner is the zero address");
  require(msg.sender == owner(), "Only the owner can transfer ownership"); // Added access control check
  emit OwnershipTransferred(_owner, newOwner);
  _owner = newOwner;
}

// ... other code ...

// this is the function that is intended to be called from external contract
function updateData(newData) {
  // Check if the caller is the contract owner before updating the data.
  require(msg.sender == owner(), "Only the owner can update the data");
  data = newData;
}