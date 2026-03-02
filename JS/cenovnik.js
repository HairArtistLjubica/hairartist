// =========================
// HAMBURGER MENU – PREMIUM
// =========================

const menuBtn = document.querySelector(".menu-btn");
const menu = document.getElementById("menu");
const closeMenu = document.querySelector(".close-menu");

// Otvaranje menija
menuBtn.addEventListener("click", () => {
  menu.classList.add("active");
  document.body.style.overflow = "hidden";
});

// Zatvaranje klikom na X
closeMenu.addEventListener("click", closeMenuHandler);

// Zatvaranje klikom van panela
menu.addEventListener("click", (e) => {
  if (e.target === menu) {
    closeMenuHandler();
  }
});

function closeMenuHandler() {
  menu.classList.remove("active");
  document.body.style.overflow = "";
}
