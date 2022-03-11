let numeros = [1,5,3,7,8,6,9,4,10,25,61,37,26]
console.log(numeros);

/* Semelhante ao nosso Print */
numeros.sort((a,b) => {return a - b})
console.log(numeros);

/* Multiplica todos por 2 */
let dobros = numeros.map((n)=>n*2)
console.log(dobros);
