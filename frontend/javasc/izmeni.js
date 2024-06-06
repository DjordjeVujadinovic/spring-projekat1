
const id= params.get('id')

if (id == null || id=='')
    window.location.href= './email.html'

const radnikId = document.getElementById('id')
const ime = document.getElementById('ime')
const prezime = document.getElementById('prezime')
const email = document.getElementById('email')
const satnica = document.getElementById('satnica')

fetch('http://localhost:8080/api/radnik/'+ id)
.then(rsp=>{
    if(rsp.status==200)
        return rsp.json()
    
    alert('Radnik nije pronadjen')
    window.location.href='./email.html'
})

.then(data=>{
    radnikId.value= data.id
    ime.value = data.ime
    prezime.value = data.prezime
    email.value = data.email
    satnica.value = data.satnica

    document.getElementById('save').addEventListener('click', ()=>{
        fetch(`http://localhost:8080/api/radnik/${data.id}`,{
            method: 'PUT',
            headers: {
                'Content-type': 'application/json'
            },
            body: JSON.stringify( {
                ime: ime.value,
                prezime : prezime.value,
                email : email.value,
                satnica : satnica.value
            })
        })
        .then(rsp =>{
            if(rsp.ok){
                window.location.href= './email.html'
                return
            }
            alert(`Menjanje podataka radnika nije uspela (HTTP ${rsp.status})`)
        })
    })
})