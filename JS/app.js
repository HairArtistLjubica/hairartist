// Footer godina
document.getElementById("year").textContent = new Date().getFullYear();

// Selektori
const menuBtn = document.querySelector(".menu-btn");
const menu = document.getElementById("menu");
const closeMenu = document.querySelector(".close-menu");

// Otvaranje
menuBtn.addEventListener("click", () => {
  menu.classList.add("active");
  document.body.style.overflow = "hidden";
});

// Zatvaranje klikom na X
closeMenu.addEventListener("click", closeMenuFn);

// Zatvaranje klikom van panela
menu.addEventListener("click", (e) => {
  if (e.target === menu) closeMenuFn();
});

function closeMenuFn() {
  menu.classList.remove("active");
  document.body.style.overflow = "";
}

// Forma
const form = document.getElementById("questionForm");
const status = document.querySelector(".form-status");

form.addEventListener("submit", function(e){
  e.preventDefault();
  status.textContent = "Vaša poruka je uspešno poslata.";
  status.style.marginTop = "15px";
  status.style.color = "#c9a55c";
  form.reset();
});
