//primero creamos la funcion pasandole como parametro los arrays de los equipos
const counts = (equipoA, equipoB) => {
    //inicializamos el arreglo donde guardaremos los datos
    const result = [];

    //recoremos cada elemento dentro del arreglo equipoB
    equipoB.forEach((elementoB) => {
        /*Con filter, podemos comparar cada elemento para verificar si es menor 
        o igual al elemento en el otro arreglo. La cantidad obtenida en cada
        iteración se agrega al arreglo de resultados.*/
        const count = equipoA.filter((elementoA) => elementoA <= elementoB).length;
        result.push(count);
    });

    /*el arreglo nuevo contiene la cantidad de elementos en equipoA que 
    son menores o iguales a cada elemento en equipoB.*/
    return result;
};

const equipoA = [2, 10, 5, 4, 8];
const equipoB = [3, 1, 7, 8];

const res = counts(equipoA, equipoB);
console.log(res); 
module.exports = counts;
