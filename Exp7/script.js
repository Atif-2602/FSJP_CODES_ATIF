// ============================================================
// Exp 7: JavaScript - contact form validation and interactive messages
// Name: Qureshi Atif Meraj Alam | UIN: 251P004
// ============================================================

function validateForm() {
    const name = document.querySelector("#cname").value.trim();
    const email = document.querySelector("#cemail").value.trim();
    const message = document.querySelector("#cmsg").value.trim();
    const msgBox = document.querySelector("#formMsg");

    // regular expression for checking email format
    const emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;

    // 1) empty field check
    if (name === "" || email === "" || message === "") {
        msgBox.textContent = "Please fill in all the fields!";
        msgBox.className = "form-msg error";
        return false;
    }

    // 2) email format check
    if (!emailRegex.test(email)) {
        msgBox.textContent = "Please enter a valid email address!";
        msgBox.className = "form-msg error";
        return false;
    }

    // 3) success message
    msgBox.textContent = "Thank you, " + name + "! Your message has been sent.";
    msgBox.className = "form-msg success";

    // reset the form
    document.querySelector("#cname").value = "";
    document.querySelector("#cemail").value = "";
    document.querySelector("#cmsg").value = "";

    return false; // prevent actual submission
}
