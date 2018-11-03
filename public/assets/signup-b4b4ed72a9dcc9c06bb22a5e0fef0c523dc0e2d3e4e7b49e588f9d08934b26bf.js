

var modalButton = document.getElementById("signup-button");
var modal = document.getElementById("signup-modal");
var closeModalButton = document.getElementById("hamburger")

function openModal() {
	return modal.style.display = "flex"
}

function closeModal() {
	return modal.style.display = "none"
}

modalButton.addEventListener("click", openModal);
closeModalButton.addEventListener("click", closeModal);
