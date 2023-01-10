var detailsBox = document.getElementById('details-box');
const states = document.querySelectorAll("path");

document.addEventListener('mouseover', function (e) {
 if (e.target.tagName == 'path') {
  var content = e.target.dataset.name;
  detailsBox.innerHTML = content;
  detailsBox.style.opacity = "100%";
 }
 else {
  detailsBox.style.opacity = "0%";
 }
});

window.onmousemove = function (e) {
 var x = e.clientX,
  y = e.clientY;
 detailsBox.style.top = (y + 20) + 'px';
 detailsBox.style.left = (x) + 'px';
};

states.forEach(function (state) {
 state.addEventListener("click", function () {
  // Send an HTTP request to the server for the state data
  fetch(`/${state.id}-data`)
   .then(response => response.json())
   .then(data => {
    // Display the state data on the page
    document.getElementById("state-name").innerHTML = data[1];
    document.getElementById("median-price").innerHTML = data[2];
    document.getElementById("inventory").innerHTML = data[3];
   });
 });
});