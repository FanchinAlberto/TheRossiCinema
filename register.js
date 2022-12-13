const RegisterSubmitButton = document.querySelector("#register-submit-button");

RegisterSubmitButton.addEventListener('click', async (e) => {
    e.preventDefault();
    var data1 = {
        name : document.querySelector('#firstName').value,
        surname : document.querySelector('#lastName').value,
        eR : document.querySelector('#email').value,
        pR : document.querySelector('#password').value,
    };
    const response = await fetch('register.php', {
        method: 'POST',
        headers:{
            "Content-Type" : "application/json"
        },
        body: JSON.stringify(data1)
    })
    .then(res => res.json())
    .then((data) => {
        if(data.successful){
            window.location.href = "firstPage.html";
        }
        else{
            document.getElementById('error-text').innerText = 'Errore nella registrazione';
        }
    });
    
}
)