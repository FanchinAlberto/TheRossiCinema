getShows();

function getShows(){
    var retrievedObject = localStorage.getItem('filmsJSON');
    var shows = JSON.parse(retrievedObject);
    
    for(let i = 0; i<2; i++){
        document.getElementById('show' + (i+1)).innerHTML += 'Sala: ' + shows[i].sala + '<br>' + 'Data: ' + shows[i].giorno + '<br>' + 'Ora:' + shows[i].ora;
    }
}
const parentElement2 = document.querySelector('#container-times');

var clicked2 = false;
var selected = 0;
parentElement2.addEventListener('click', event => {
    const clickedDiv = event.target;
    if(clicked2){
        clickedDiv.className = "w-52 rounded-xl border-2 border-orange-300 p-3 pl-9 text-orange-300";
        clicked2 = false;
    }
    else{
        if(clickedDiv.getAttribute('id') == 'show1'){
            clickedDiv.className = "w-52 rounded-xl border-2 border-gray-700 p-3 pl-9 text-gray-700 bg-orange-300";
            clicked2 = true;
            selected = 1;
            console.log(selected);
        }
        else{
            clickedDiv.className = "w-52 rounded-xl border-2 border-gray-700 p-3 pl-9 text-gray-700 bg-orange-300";
            clicked2 = true;
            selected = 2;
            console.log(selected);
        }
    }
});

const input_ticket = document.getElementById('tickets-input');
var price = 9.9;
input_ticket.addEventListener('keyup', event => {
    let total = input_ticket.value*price;
    document.getElementById('show-totale').innerText = 'Totale:  ' + total.toFixed(2) + '€';
});


function confirm(){
    var retrievedObject = localStorage.getItem('filmsJSON');
    var shows = JSON.parse(retrievedObject);
    let div = document.getElementById('contain-resume');
    let select = document.getElementById('show'+ selected);
    let total = input_ticket.value*price;
    div.innerHTML = 'RESUME <br>' + 'Sala: ' + shows[selected - 1].sala + '<br> Giorno: ' + shows[selected -1].giorno + '<br> Ora: ' + shows[selected-1].ora + '<br> Tickets + Total: ' + input_ticket.value + ', ' + total.toFixed(2) + '€' + '<button class="w-full px-4 py-2 font-bold text-gray-900 bg-orange-400 rounded-full hover:bg-blue-700 focus:outline-none focus:shadow-outline mt-5" onclick="pay()"> GO TO PAYMENT </button>';
}

function pay(){
    window.location.href = "payment.html";
}

