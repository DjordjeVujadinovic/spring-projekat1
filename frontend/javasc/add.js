const ime = document.getElementById('ime')
const prezime = document.getElementById('prezime')
const email = document.getElementById('email')
const satnica = document.getElementById('satnica')

document.getElementById('save').addEventListener('click', ()=>{
    if(ime.value== null || ime.value== ''){
        alert('Ne sme biti prazno')
        return
    }
    if(prezime.value== null || prezime.value== ''){
        alert('Ne sme biti prazno')
        return
    }
    if(email.value== null || email.value== ''){
        alert('Ne sme biti prazno')
        return
    }
    if(satnica.value== null || satnica.value== ''){
        alert('Ne sme biti prazno')
        return
    }

    fetch('http://localhost:8080/api/radnik',{
    method: "PUT",
    headers: {
        'Content-type': 'application/json'
    },
    body: JSON.stringify( {
        ime: ime.value,
        prezime : prezime.value,
        email : email.value,
        satnica : satnica.value
    })
    .then(rsp =>{
        if(rsp.ok){
            window.location.href= './email.html'
            return
        }
        alert(`Dodavanje podataka radnika nije uspela (HTTP ${rsp.status})`)
    })
})
})