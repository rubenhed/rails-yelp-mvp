const navLinks = document.querySelectorAll(".nav-link")

const makeActive = () => {
  const currentPath = window.location.pathname;
  navLinks.forEach((navLink) => {
    navLink.classList.remove("active")
    navLink.classList.add("active", navLink.getAttribute("href") === currentPath);
    console.log(currentPath);
  });
};

makeActive()
