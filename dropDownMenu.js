const profileButton = document.querySelector(".profile-button");
const profileCard = document.querySelector(".profile-card");

profileButton.addEventListener("click", () => {
  profileCard.classList.toggle("active");
});
