let switchCtn = document.querySelector("#switch-cnt");
let switchC1 = document.querySelector("#switch-c1");
let switchC2 = document.querySelector("#switch-c2");
let switchCircle = document.querySelectorAll(".switch__circle");
let switchBtn = document.querySelectorAll(".switch-btn");
let aContainer = document.querySelector("#a-container");
let bContainer = document.querySelector("#b-container");
let allButtons = document.querySelectorAll(".submit");

let getButtons = (e) => e.preventDefault()

let signInButton = document.querySelector("#b-form .submit");
let redirectToNewPage = (e) => 
{
    e.preventDefault();
    window.location.href = "";
}
signInButton.addEventListener("click", redirectToNewPage);

let signUpButton = document.querySelector("#a-form .submit");
let redirect = (e) => {
    e.preventDefault();
    let inputs = document.querySelectorAll('#a-form .form__input');
    for (let i = 0; i < inputs.length; i++) {
        if (inputs[i].value.trim() === '') {
            alert('Input fields are empty');
            return;
        }
    }
    window.location.href = "Register.html";
}

signUpButton.addEventListener("click", redirect);

let changeForm = (e) => {

    switchCtn.classList.add("is-gx");
    setTimeout(function(){
        switchCtn.classList.remove("is-gx");
    }, 1500)

    switchCtn.classList.toggle("is-txr");
    switchCircle[0].classList.toggle("is-txr");
    switchCircle[1].classList.toggle("is-txr");

    switchC1.classList.toggle("is-hidden");
    switchC2.classList.toggle("is-hidden");
    aContainer.classList.toggle("is-txl");
    bContainer.classList.toggle("is-txl");
    bContainer.classList.toggle("is-z200");
}
let checkInputFields = (e) => {
        let inputs = document.querySelectorAll('.form__input');
        for (let i = 0; i < inputs.length; i++) {
            if (inputs[i].value.trim() === '') {
                e.preventDefault();
                alert('Some Input fields cannot be empty');
                return;
            }
        }
    }
    
    signInButton.addEventListener("click", checkInputFields);

let mainF = (e) => {
    for (var i = 0; i < allButtons.length; i++)
        allButtons[i].addEventListener("click", getButtons );
    for (var i = 0; i < switchBtn.length; i++)
        switchBtn[i].addEventListener("click", changeForm)
}

window.addEventListener("load", mainF);


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
  


