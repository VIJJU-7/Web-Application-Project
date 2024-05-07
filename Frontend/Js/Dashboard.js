let sidebar = document.querySelector(".sidebar");
let closeBtn = document.querySelector("#btn");
let searchBtn = document.querySelector(".bx-search");

closeBtn.addEventListener("click", ()=>{
  sidebar.classList.toggle("open");
  menuBtnChange();
});

searchBtn.addEventListener("click", ()=>{ 
  sidebar.classList.toggle("open");
  menuBtnChange(); 
});


function menuBtnChange() {
 if(sidebar.classList.contains("open")){
   closeBtn.classList.replace("bx-menu", "bx-menu-alt-right");
 }else {
   closeBtn.classList.replace("bx-menu-alt-right","bx-menu");
 }
}


const checkbox = document.getElementById("checkbox")
checkbox.addEventListener("change", () => {
  document.body.classList.toggle("dark")
})


// const body = document.querySelector('body'),
// sidebar = body.querySelector('nav'),
// toggle = body.querySelector(".toggle"),
// searchBtn = body.querySelector(".search-box"),
// modeSwitch = body.querySelector(".toggle-switch"),
// modeText = body.querySelector(".mode-text");


// toggle.addEventListener("click" , () =>{
// sidebar.classList.toggle("close");
// })

// searchBtn.addEventListener("click" , () =>{
// sidebar.classList.remove("close");
// })

// modeSwitch.addEventListener("click" , () =>{
// body.classList.toggle("dark");

// if(body.classList.contains("dark")){
//   modeText.innerText = "Light mode";
// }else{
//   modeText.innerText = "Dark mode";
  
// }
// });



