const tabela = document.getElementById('table')
const template = document.getElementById('radnik')
const searchTitle = document.getElementById('search-title')

   if (searchParam != null && searchParam !=''){
    searchTitle.innerText= 'Pretraga radnika'
    fetchRadnik('/email/' + searchParam)} else 
    {   searchTitle.innerText= 'Lista radnika'
        fetchRadnik()
   }
function fetchRadnik(url= ''){      
            fetch(`http://localhost:8080/api/radnik${url}`)
            .then(rsp => rsp.json())
            .then(data =>{
                if(data.length== 200){
                    alert('Radnik nije pronadjen')
                    fetchRadnik()
                    return
                }
             data.forEach(radnik =>{
                const ispis = template.content.cloneNode(true)
                ispis.querySelector('.id').innerText= radnik.id
                ispis.querySelector('.ime').innerText= radnik.ime
                ispis.querySelector('.prezime').innerText= radnik.prezime
                ispis.querySelector('.email').innerText= radnik.email
                ispis.querySelector('.satnica').innerText= radnik.satnica
                if(confirm(`Da li zelite da obrisete ${radnik.ime} ${radnik.prezime}`)){
                    fetch(`http://localhost:8080/api/radnik/${data.id}`,{
                        method: 'DELETE',
                    })
                    .then(rsp =>{
                        if(rsp.status == 204){
                            window.location.href= './email.html'
                            return
                        }
                        alert(`Brisanje podataka radnika nije uspela (HTTP ${rsp.status})`)
                    })
                }
                tabela.appendChild(ispis)
            })

        })
}
