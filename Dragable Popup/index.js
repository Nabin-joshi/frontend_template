// Get the popup element
var popup = document.getElementById("popup");

// Variables to store mouse position and popup position
var offsetX, offsetY, initialX, initialY;

// Function to start dragging the popup
function startDrag(e) {
  e.preventDefault();
  offsetX = e.clientX;
  offsetY = e.clientY;
  initialX = popup.offsetLeft;
  initialY = popup.offsetTop;
  document.addEventListener("mousemove", dragPopup);
  document.addEventListener("mouseup", stopDrag);
}

// Function to drag the popup
function dragPopup(e) {
  e.preventDefault();
  var dx = e.clientX - offsetX;
  var dy = e.clientY - offsetY;
  popup.style.left = initialX + dx + "px";
  popup.style.top = initialY + dy + "px";
}

// Function to stop dragging the popup
function stopDrag() {
  document.removeEventListener("mousemove", dragPopup);
  document.removeEventListener("mouseup", stopDrag);
}

// Add event listeners to the popup header for dragging
popup.querySelector(".popup-header").addEventListener("mousedown", startDrag);
