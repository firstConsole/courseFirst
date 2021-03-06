/*
 1. Написать функцию, которая определяет, четное число или нет.
 2. Написать функцию, которая определяет, делится ли число без остатка на 3.
 3. Создать возрастающий массив из 100 чисел.
 4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.
 5. * Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 50 элементов.
 Числа Фибоначчи определяются соотношениями Fn=Fn-1 + Fn-2.
 6. * Заполнить массив из 100 элементов различными простыми числами. Натуральное число, большее единицы, называется
 простым, если оно делится только на себя и на единицу. Для нахождения всех простых чисел не больше заданного числа n,
 следуя методу Эратосфена, нужно выполнить следующие шаги:

 a. Выписать подряд все целые числа от двух до n (2, 3, 4, ..., n).
 b. Пусть переменная p изначально равна двум — первому простому числу.
 c. Зачеркнуть в списке числа от 2 + p до n, считая шагом p..
 d. Найти первое не зачёркнутое число в списке, большее, чем p, и присвоить значению переменной p это число.
 e. Повторять шаги c и d, пока возможно.

 */

import Foundation

// 1. Написать функцию, которая определяет, четное число или нет.

print("Чётное число или нет?\n")

func numberParity (x: Int) {

    x % 2 == 0 ? print("\(x) чётное число\n") : print("\(x) нечётное число\n")

}

numberParity(x: 537)
numberParity(x: 1264)

/*
********************************************** КОНЕЦ ПЕРВОГО ЗАДАНИЯ *************************************************
*/

// 2. Написать функцию, которая определяет, делится ли число без остатка на 3.

print("Делится ли число 14 без остатка на 3?\n")

let x = 14

func withoutRemainder () {

    x % 3 == 0 ? print("\(x) число делится без остатка\n") : print("Число не делиться без остатка!\n")

}

withoutRemainder()

/*
********************************************** КОНЕЦ ВТОРОГО ЗАДАНИЯ *************************************************
*/

// 3. Создать возрастающий массив из 100 чисел.

print("Возрастающий массив из 100 чисел\n")

var numbersUp = [Int] ()

for countNumbersUp in 1...100 {

    numbersUp.append(countNumbersUp)

}

print(numbersUp)

/*
********************************************** КОНЕЦ ТРЕТЬЕГО ЗАДАНИЯ *************************************************
*/

// 4. Удалить из этого массива все чётные числа и все числа, которые не делятся на 3.

print()

var destroyResult = numbersUp.filter { $0 % 2 != 0 && $0 % 3 != 0 }

print("\(destroyResult)\nОтлично! Едем дальше!\n")

/*
********************************************** КОНЕЦ ЧЕТВЁРТОГО ЗАДАНИЯ ***********************************************
*/

// 5. Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 50 элементов.
// Числа Фибоначчи определяются соотношениями Fn=Fn-1 + Fn-2.

print("Последовательность Фибоначчи\n")

func fibonacciSequence(f: Int) -> [Int] {

    var fibonacciSequence = [Int] ()

    for f in 0...f {

        if f == 0 {
            fibonacciSequence.append(0)

        } else if f == 1 {
            fibonacciSequence.append(1)

        } else {
            fibonacciSequence.append (fibonacciSequence[f-1] + fibonacciSequence[f-2])

        }

    }

    return fibonacciSequence

}

print(fibonacciSequence(f: 50))

/*
********************************************** КОНЕЦ ПЯТОГО ЗАДАНИЯ ***************************************************
*/

//6. * Заполнить массив из 100 элементов различными простыми числами. Натуральное число, большее единицы, называется
//простым, если оно делится только на себя и на единицу. Для нахождения всех простых чисел не больше заданного числа n,
//следуя методу Эратосфена, нужно выполнить следующие шаги:
//a. Выписать подряд все целые числа от двух до n (2, 3, 4, ..., n).
//b. Пусть переменная p изначально равна двум — первому простому числу.
//c. Зачеркнуть в списке числа от 2 + p до n, считая шагом p...
//d. Найти первое не зачёркнутое число в списке, большее, чем p, и присвоить значению переменной p это число.
//e. Повторять шаги c и d, пока возможно.

print("Задание 6\n")

var simpleEratosthenes = [Int] ()

let p = 2
let n = 100

for i in p...n {

    simpleEratosthenes.append(i)

}

print(simpleEratosthenes)

func isSimple(_ num: Int) -> Bool {

    return num > 1 && !(2..<num).contains { num % $0 == 0 }

}

var primeNumbers = [Int] ()

for x in simpleEratosthenes {

    if isSimple(x) == true {
        primeNumbers.append(x)

    }

}

print("Натуральные числа до 100:\n")
print(primeNumbers)

// Возможно 6 задание сделал неправильно. Не очень понял, что от меня хотят...

/*
********************************************** КОНЕЦ ШЕСТОГО ЗАДАНИЯ **************************************************
*/


