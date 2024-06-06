const pretragaInput = document.getElementById('search')
const params = new URLSearchParams(window.location.search)
const searchParam= params.get('search')

if (searchParam !=null && searchParam != ''){
    pretragaInput.value = searchParam
}
pretragaInput.addEventListener('keypress', (e) =>{
    if(e.key === 'Enter') Pretrazi()
})

document.getElementById('search-btn')
    .addEventListener('click', ()=>{
        Pretrazi()
    })
    function Pretrazi(){
        if (pretragaInput.value =='') return 
        window.location.href= `./email.html?search=${pretragaInput.value}`

    }
