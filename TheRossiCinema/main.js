
const loginSubmitButton = document.querySelector("#login-submit-button");

loginSubmitButton.addEventListener('click', async (e) => {
    e.preventDefault();
    var data = {
        username : document.querySelector('#username').value,
        password : document.querySelector('#password').value,
        button : loginSubmitButton,
    };
    console.log(data);
    const response = await fetch('login.php', {
        method: 'POST',
        headers:{
            "Content-Type" : "application/json"
        },
        body: JSON.stringify(data)
    })
    .then(res => res.json())
    .then((data) => {
        if(!data.success){
            console.log('sas');
        }
        else{
            window.location.href = "firstPage.html";
        }
    })
});


