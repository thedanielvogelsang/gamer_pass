

var modalButton = document.getElementById("signup-button");
var modal = document.getElementById("signup-modal");

function openModal() {
	return modal.style.display = "flex"
}

modalButton.addEventListener("click", openModal);
