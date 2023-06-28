// Get the "Add User" button and its pop-up
const addUserButton = document.getElementById("add-user-button");
const addUserPopup = document.getElementById("add-user-popup");

// Get the "Add Role" button and its pop-up
const addRoleButton = document.getElementById("add-role-button");
const addRolePopup = document.getElementById("add-role-popup");

// Get the "Save" and "Cancel" buttons for the "Add User" pop-up
const saveUserButton = document.getElementById("save-user-button");
const cancelUserButton = document.getElementById("cancel-user-button");

// Get the "Save" and "Close" buttons for the "Add Role" pop-up
const saveRoleButton = document.getElementById("save-role-button");
const closeRoleButton = document.getElementById("close-role-button");

// Show the "Add User" pop-up when the button is clicked
addUserButton.addEventListener("click", () => {
  addUserPopup.classList.add("active");
});

// Show the "Add Role" pop-up when the button is clicked
addRoleButton.addEventListener("click", () => {
  addRolePopup.classList.add("active");
});

// Hide the pop-ups when the user clicks outside of them
window.addEventListener("click", (event) => {
  if (event.target == addUserPopup) {
    addUserPopup.classList.remove("active");
  }
  if (event.target == addRolePopup) {
    addRolePopup.classList.remove("active");
  }
});

// Save the user and close the pop-up when the "Save" button is clicked
saveUserButton.addEventListener("click", () => {
  // Save user logic here
  addUserPopup.classList.remove("active");
});

// Close the pop-up when the "Cancel" button is clicked
cancelUserButton.addEventListener("click", () => {
  addUserPopup.classList.remove("active");
});

// Save the role and return to the "Add User" pop-up when the "Save" button is clicked
saveRoleButton.addEventListener("click", () => {
  // Save role logic here
  addRolePopup.classList.remove("active");
  addUserPopup.classList.add("active");
});

// Close the "Add Role" pop-up when the "Close" button is clicked
closeRoleButton.addEventListener("click", () => {
  addRolePopup.classList.remove("active");
});
