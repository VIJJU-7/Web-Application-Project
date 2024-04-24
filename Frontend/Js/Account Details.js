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

  signUpButton.addEventListener("click", checkInputFields);
});

