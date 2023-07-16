document.getElementById("btnLogin").addEventListener("click", function() {
  var username = document.getElementById("txtUsername").value;
  var password = document.getElementById("txtPassword").value;

  console.log("Username:", username);
  console.log("Password:", password);

  if (username == "admin" && password == "password") {
    window.location.href = "homepage.html";
  } else {
    alert("Wrong username or password");
  }
});