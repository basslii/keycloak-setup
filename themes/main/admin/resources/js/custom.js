console.log("Custom Admin Theme loaded!");

// Example: Add watermark
document.addEventListener("DOMContentLoaded", function () {
  const footer = document.querySelector(".pf-c-page__footer");
  if (footer) {
    const note = document.createElement("div");
    note.innerText = "⚡ Customized Keycloak Admin Console ⚡";
    note.style.textAlign = "center";
    note.style.padding = "8px";
    note.style.fontSize = "12px";
    footer.appendChild(note);
  }
});
