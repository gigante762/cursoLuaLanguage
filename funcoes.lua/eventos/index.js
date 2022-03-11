function mudarParaVermelho()
{
    let quadrado = document.getElementById('quadrado')
    quadrado.style.background = 'red';
}

function mudarParaVerde()
{
    let quadrado = document.getElementById('quadrado')
    quadrado.style.background = 'green';
}



let btnVermelho = document.getElementById('btnVermelho')
let btnVerde = document.getElementById('btnVerde')


btnVerde.addEventListener('click', function(){
    mudarParaVerde()
})

btnVermelho.addEventListener('click', function(){
    mudarParaVermelho()
})