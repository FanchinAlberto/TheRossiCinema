getFilms();

async function getFilms()
{
    const response = await fetch('fetchFilms.php')
    .then(res => res.json())
    .then((data) => {
        for(let i = 0; i<4; i++){
            document.getElementById('title'+ (i+1)).innerText += data[i].titolo;
            document.getElementById('genre'+ (i+1)).innerText += ' ' + data[i].genere;
            document.getElementById('director'+ (i+1)).innerText += ' ' + data[i].regia;
            document.getElementById('cast'+ (i+1)).innerText += ' ' + data[i].cast;
            document.getElementById('lenght'+ (i+1)).innerText += ' ' + data[i].durata;
            document.getElementById('image'+ (i+1)).src = data[i].immagine;
        }
    })
}

async function goToBooking(id){
    var data = {
        filmID : id
    };
    await fetch('fetchShows.php', {
        method: 'POST',
        headers:{
            "Content-Type" : "application/json"
        },
        body: JSON.stringify(data)
    })
    .then(res => res.json())
    .then((data) => {
        localStorage.setItem('filmsJSON', JSON.stringify(data));
    });
    window.location.href = "bookShow.html";
}