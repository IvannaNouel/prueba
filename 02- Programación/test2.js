const counts = require('./index2.js'); 

test('test para index2', () => {
  const equipoA = [2, 10, 5, 4, 8];
  const equipoB = [3, 1, 7, 8];

  const result = counts(equipoA, equipoB);

  expect(result).toEqual([1, 0, 3, 4]); 
});
