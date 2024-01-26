def counts(equipoA, equipoB):
    result = []

    for i in range(len(equipoB)):
        count = 0
        for j in range(len(equipoA)):
            if equipoA[j] <= equipoB[i]:
                count += 1
        result.append(count)

    print(result)

counts([2, 10, 5, 4, 8], [3, 1, 7, 8])
