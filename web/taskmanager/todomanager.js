let adfrm = document.addfrm;
let add = adfrm.add;
let ul = document.querySelector("ul");
let i = document.querySelectorAll("i");
let search = document.search;
let str = "";
i.forEach(ic => {
   ic.addEventListener('click', e => {
      let parent = ic.parentNode;
      ul.removeChild(parent);
   })
})

adfrm.addEventListener('submit', e => {
   e.preventDefault();
   let value = add.value;
   let li = document.createElement("li");
   let span = document.createElement("span");
   let i = document.createElement("i");
   span.innerText = value;
   li.appendChild(span);
   li.appendChild(i);
   li.classList.add("list-group-item", "d-flex", "justify-content-between", "align-items-center");
   i.classList.add("far", "fa-trash-alt", "delete");
   ul.appendChild(li);
   add.value = "";
   i.addEventListener('click', e => {
      let parent = i.parentNode;
      ul.removeChild(parent);
   })

})

ul.addEventListener("click", (e) => {
   console.log(e.target);
   e.target.style.color = "crimson";
});
const btn = document.querySelector("#additem");
btn.addEventListener("click", () => {
   let task = prompt("What you want to do next ?");
   ul.innerHTML += "<li>" + task + "</li>";
});


