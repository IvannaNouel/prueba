//primero creamos la funcion pasandole como parametro los arrays de los equipos
const counts = (equipoA, equipoB) => {
    //inicializamos el arreglo donde guardaremos los datos
    const result = [];
    
    //dentro de este bucle interamos por cada elemento dentro del equipoB
    for (let i = 0; i < equipoB.length; i++) {
    /*iniciliziamos esta variable donde guardaremos los elementos que 
    cumplan con la condición*/
        let count = 0;
    //dentro de este bucle interamos por cada elemento dentro del equipoA
        for (let j = 0; j < equipoA.length; j++) {
             /*esta condicicional revisa si el elemento en el equipoA
             es menor o igual al elemento en el equipB si esto se cumple
             incrementa el numero de la variable'count'*/
            if (equipoA[j] <= equipoB[i]) {
                count++;
            }
        }
    /*aqui va agregando la cantidad almacenada en cada iteración para agregarla 
    al nuevo arreglo de resultados*/ 
        result.push(count);
    }
    /*el arreglo nuevo contiene la cantidad de elementos en equipoA que 
    son menores o iguales a cada elemento en equipoB.*/
    return result;
};

const equipoA = [2, 10, 5, 4, 8];
const equipoB = [3, 1, 7, 8];

const res = counts(equipoA, equipoB);
console.log(res); 
module.exports = counts;
