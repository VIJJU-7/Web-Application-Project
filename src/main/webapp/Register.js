window.addEventListener("DOMContentLoaded", function() {
  let signUpButton = document.querySelector("#a-form .submit");

  let checkInputFields = (e) => {
    let inputs = document.querySelectorAll('#a-form .form__input');
    for (let i = 0; i < inputs.length; i++) {
      if (inputs[i].value.trim() === '') {
        e.preventDefault();
        alert('Some Input fields cannot be empty');
        return;
      }
    }
  }
  let backButton = document.querySelector("#back-button");

let redirectToPreviousPage = (e) => {
    e.preventDefault();
    window.location.href = "WelcomePage.jsp";
}

backButton.addEventListener("click", redirectToPreviousPage);


  signUpButton.addEventListener("click", checkInputFields);
  signUpButton.addEventListener("click", checkInputFields);
  backButton.addEventListener("click", function() {
    window.location.href = "WelcomePage.jsp";
  });
});




