/*

1. Описать несколько структур – любой легковой автомобиль SportCar и любой грузовик TrunkCar.
2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель,
открыты ли окна, заполненный объем багажника.
3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель,
открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
4. Добавить в структуры метод с одним аргументом типа перечисления,
который будет менять свойства структуры в зависимости от действия.
5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.
6. Вывести значения свойств экземпляров в консоль.

*/

import Foundation

let pCar = "Mazda"
let tCar = "Toyota"

func choosingCar(typeCar: Int) -> Bool {

    enum TypeCar {
        case Легковой
        case Грузовой

    }

    if typeCar == 1 {
        print("Тип автомобиля -> \(TypeCar.Легковой)\n")
        passengerCarBrand(passengerCar: pCar)
        return true
    } else if typeCar == 2 {
        print("Тип автомобиля -> \(TypeCar.Грузовой)\n")
        truckCarBrand(truckCar: tCar)
        return false
    } else {
        print("Ошибка! Тип автомобиля не выбран!")
        exit(0)

    }

}

let x = choosingCar(typeCar: 1)

func passengerCarBrand(passengerCar: String) {

    enum PassengerCarBrand {
        case Toyota
        case Mercedes
        case Audi
        case Mazda
    }

    if passengerCar == "Toyota" {
        print("Вы выбрали автомобиль \(PassengerCarBrand.Toyota)\n")

    } else if passengerCar == "Mercedes" {
        print("Вы выбрали автомобиль \(PassengerCarBrand.Mercedes)\n")

    } else if passengerCar == "Audi" {
        print("Вы выбрали автомобиль \(PassengerCarBrand.Audi)\n")

    } else if passengerCar == "Mazda" {
        print("Вы выбрали автомобиль \(PassengerCarBrand.Mazda)\n")

    } else {
        print("Нужно выбрать хотя бы один автомобиль!")
        exit(0)

    }

}

func truckCarBrand(truckCar: String) {

    enum TruckCarBrand {
        case Toyota
        case Mercedes
        case Hyundai
        case Ford

    }

    if truckCar == "Toyota" {
        print("Вы выбрали автомобиль \(TruckCarBrand.Toyota)\n")

    } else if truckCar == "Mercedes" {
        print("Вы выбрали автомобиль \(TruckCarBrand.Mercedes)\n")

    } else if truckCar == "Hyundai" {
        print("Вы выбрали автомобиль \(TruckCarBrand.Hyundai)\n")

    } else if truckCar == "Ford" {
        print("Вы выбрали автомобиль \(TruckCarBrand.Ford)\n")

    } else {
        print("Нужно выбрать хотя бы один автомобиль!")
        exit(0)

    }

}

struct CarFeatures {

    let carModel: String
    let carReleaseYear: Int
    let carTrunkVolume: Double
    let carEngineCapacity: Double
    let carFuel: String
    let carTransmission: String

    func checkingCarFeatures() {


    }

}

let carFordFeatures = CarFeatures(carModel: "Ford Transit", carReleaseYear: 2014, carTrunkVolume: 15100,
                                  carEngineCapacity: 2.2, carFuel: "Дизельное топливо", carTransmission: "МКПП")

let carToyotaTruckFeatures = CarFeatures(carModel: "Toyota Dyna", carReleaseYear: 2015, carTrunkVolume: 20560,
                            carEngineCapacity: 4.0, carFuel: "Дизельное топливо", carTransmission: "МКПП")

let carMercedesTruckFeatures = CarFeatures(carModel: "Mercedes Sprinter", carReleaseYear: 2014, carTrunkVolume: 16150,
                              carEngineCapacity: 2.0, carFuel: "Дизельное топливо", carTransmission: "МКПП")

let carHyundaiFeatures = CarFeatures(carModel: "Hyundai Porter", carReleaseYear: 2010, carTrunkVolume: 12100,
                             carEngineCapacity: 1.8, carFuel: "Дизельное топливо", carTransmission: "МКПП")

// Инициализируем возможные варианты комплектации легковых машин

let carToyotaPassengerFeatures = CarFeatures(carModel: "Toyota Corolla", carReleaseYear: 2010, carTrunkVolume: 3170,
                                     carEngineCapacity: 1.6, carFuel: "Бензин", carTransmission: "АКПП")

let carMercedesPassengerFeatures = CarFeatures(carModel: "Mercedes C200 4MATIC Sport", carReleaseYear: 2021,
                                       carTrunkVolume: 3340, carEngineCapacity: 3.5, carFuel: "Бензин",
                                       carTransmission: "АКПП")

let carAudiFeatures = CarFeatures(carModel: "Audi Q7", carReleaseYear: 2013, carTrunkVolume: 5780,
                                  carEngineCapacity: 3.0, carFuel: "Дизельное топливо", carTransmission: "АКПП")

let carMazdaFeatures = CarFeatures(carModel: "Mazda CX-5", carReleaseYear: 2016, carTrunkVolume: 4160,
                           carEngineCapacity: 2.0, carFuel: "Бензин", carTransmission: "АКПП")

struct CarCondition {

    let isDoorsCondition: Bool
    let isHeadlightsOn: Bool
    let isFuelInTunk: Bool
    let isAutoDoorGuides: Bool
    let isCarStarted: Bool
    let isCarLoaded: Bool

    func checkingCondition() {

        print("Состояние автомобиля\n")

        if isDoorsCondition == true {
            print("Двери открыты")

        } else if isDoorsCondition == false {
            print("Двери закрыты")

        } else {
            print("ОШИБКА! Константе <isDoorsCondition> не присвоено значение!")
        }

        if isHeadlightsOn == true {
            print("Фары включены")

        } else if isHeadlightsOn == false {
            print("Фары выключены")

        } else {
            print("ОШИБКА! Константе <isHeadlightsOn> не присвоено значение!")
        }

        if isFuelInTunk == true {
            print("Топливо есть")

        } else if isFuelInTunk == false {
            print("Бак пуст! Пожалуйста, заправьте автомобиль!")

        } else {
            print("ОШИБКА! Константе <isFuelInTunk> не присвоено значение!")
        }

        if isAutoDoorGuides == true {
            print("Автодоводчик дверей присутствует в этой комплектации")

        } else if isAutoDoorGuides == false {
            print("В этой комплектации отсутствуют автодоводчики дверей")

        } else {
            print("ОШИБКА! Константе <isAutoDoorGuides> не присвоено значение!")
        }

        if isCarStarted == true {
            print("Машина заведена")

        } else if isCarStarted == false {
            print("Машина не заведена")

        } else {
            print("ОШИБКА! Константе <isCarStarted> не присвоено значение!")
        }

        if isCarLoaded == true {
            print("Машина не пуста")

        } else if isCarLoaded == false {
            print("Машина пуста")

        } else {
            print("ОШИБКА! Константе <isCarLoaded> не присвоено значение!")
        }

    }

}

//CarCondition.isDoorsCondition = true ? print("Двери открыты") : print("Двери закрыты")

// Инициализируем возможные варианты состояния грузового автомобиля

let carFordCondition = CarCondition(isDoorsCondition: true, isHeadlightsOn: false,
                                    isFuelInTunk: true, isAutoDoorGuides: false, isCarStarted: false, isCarLoaded: true)

let carToyotaTruckCondition = CarCondition(isDoorsCondition: false, isHeadlightsOn: true, isFuelInTunk: true,
                                           isAutoDoorGuides: false, isCarStarted: true, isCarLoaded: false)

let carMercedesTruckCondition = CarCondition(isDoorsCondition: false, isHeadlightsOn: false, isFuelInTunk: false,
                                             isAutoDoorGuides: false, isCarStarted: false, isCarLoaded: true)

let carHyundaiCondition = CarCondition(isDoorsCondition: true, isHeadlightsOn: true, isFuelInTunk: true,
                                       isAutoDoorGuides: false, isCarStarted: false, isCarLoaded: true)

// Инициализируем возможные варианты состояния легкового автомобиля

let carToyotaPassengerCondition = CarCondition(isDoorsCondition: false, isHeadlightsOn: true, isFuelInTunk: false,
                                               isAutoDoorGuides: true, isCarStarted: false, isCarLoaded: false)

let carMercedesPassengerCondition = CarCondition(isDoorsCondition: false, isHeadlightsOn: true, isFuelInTunk: true,
                                                 isAutoDoorGuides: true, isCarStarted: true, isCarLoaded: false)

let carAudiCondition = CarCondition(isDoorsCondition: true, isHeadlightsOn: true, isFuelInTunk: true,
                                    isAutoDoorGuides: true, isCarStarted: false, isCarLoaded: false)

let carMazdaCondition = CarCondition(isDoorsCondition: true, isHeadlightsOn: true, isFuelInTunk: true,
                                    isAutoDoorGuides: false, isCarStarted: true, isCarLoaded: true)

func checkingPassengerCar(typePassCar: String) {

    if typePassCar == "Audi" {
        print("Модель: \(carAudiFeatures.carModel)")
        print("Год выпуска: \(carAudiFeatures.carReleaseYear)")
        print("Объём кузова: \(carAudiFeatures.carTrunkVolume)")
        print("Объём двигателя: \(carAudiFeatures.carEngineCapacity)")
        print("Тип топлива: \(carAudiFeatures.carFuel)")
        print("Трансмиссия: \(carAudiFeatures.carTransmission)")
        print(carAudiCondition.checkingCondition())

    } else if typePassCar == "Toyota" {
        print("Модель: \(carToyotaPassengerFeatures.carModel)")
        print("Год выпуска: \(carToyotaPassengerFeatures.carReleaseYear)")
        print("Объём кузова: \(carToyotaPassengerFeatures.carTrunkVolume)")
        print("Объём двигателя: \(carToyotaPassengerFeatures.carEngineCapacity)")
        print("Тип топлива: \(carToyotaPassengerFeatures.carFuel)")
        print("Трансмиссия: \(carToyotaPassengerFeatures.carTransmission)")
        print(carToyotaPassengerCondition.checkingCondition())

    } else if typePassCar == "Mercedes" {
        print("Модель: \(carMercedesPassengerFeatures.carModel)")
        print("Год выпуска: \(carMercedesPassengerFeatures.carReleaseYear)")
        print("Объём кузова: \(carMercedesPassengerFeatures.carTrunkVolume)")
        print("Объём двигателя: \(carMercedesPassengerFeatures.carEngineCapacity)")
        print("Тип топлива: \(carMercedesPassengerFeatures.carFuel)")
        print("Трансмиссия: \(carMercedesPassengerFeatures.carTransmission)")
        print(carMercedesPassengerCondition.checkingCondition())

    } else if typePassCar == "Mazda" {
        print("Модель: \(carMazdaFeatures.carModel)")
        print("Год выпуска: \(carMazdaFeatures.carReleaseYear)")
        print("Объём кузова: \(carMazdaFeatures.carTrunkVolume)")
        print("Объём двигателя: \(carMazdaFeatures.carEngineCapacity)")
        print("Тип топлива: \(carMazdaFeatures.carFuel)")
        print("Трансмиссия: \(carMazdaFeatures.carTransmission)")
        print(carMazdaCondition.checkingCondition())
    } else {
        print()
    }
}

func checkingTruckCar(typeTruckCar: String) {

    if typeTruckCar == "Toyota" {
        print("Модель: \(carToyotaTruckFeatures.carModel)")
        print("Год выпуска: \(carToyotaTruckFeatures.carReleaseYear)")
        print("Объём кузова: \(carToyotaTruckFeatures.carTrunkVolume)")
        print("Объём двигателя: \(carToyotaTruckFeatures.carEngineCapacity)")
        print("Тип топлива: \(carToyotaTruckFeatures.carFuel)")
        print("Трансмиссия: \(carToyotaTruckFeatures.carTransmission)")
        print(carToyotaTruckCondition.checkingCondition())

    } else if typeTruckCar == "Mercedes" {
        print("Модель: \(carMercedesTruckFeatures.carModel)")
        print("Год выпуска: \(carMercedesTruckFeatures.carReleaseYear)")
        print("Объём кузова: \(carMercedesTruckFeatures.carTrunkVolume)")
        print("Объём двигателя: \(carMercedesTruckFeatures.carEngineCapacity)")
        print("Тип топлива: \(carMercedesTruckFeatures.carFuel)")
        print("Трансмиссия: \(carMercedesTruckFeatures.carTransmission)")
        print(carMercedesTruckCondition.checkingCondition())

    } else if typeTruckCar == "Hyundai" {
        print("Модель: \(carHyundaiFeatures.carModel)")
        print("Год выпуска: \(carHyundaiFeatures.carReleaseYear)")
        print("Объём кузова: \(carHyundaiFeatures.carTrunkVolume)")
        print("Объём двигателя: \(carHyundaiFeatures.carEngineCapacity)")
        print("Тип топлива: \(carHyundaiFeatures.carFuel)")
        print("Трансмиссия: \(carHyundaiFeatures.carTransmission)")
        print(carHyundaiCondition.checkingCondition())

    } else if typeTruckCar == "Ford" {
        print("Модель: \(carFordFeatures.carModel)")
        print("Год выпуска: \(carFordFeatures.carReleaseYear)")
        print("Объём кузова: \(carFordFeatures.carTrunkVolume)")
        print("Объём двигателя: \(carFordFeatures.carEngineCapacity)")
        print("Тип топлива: \(carFordFeatures.carFuel)")
        print("Трансмиссия: \(carFordFeatures.carTransmission)")
        print(carFordCondition.checkingCondition())

    }

}

if x == true {
    checkingPassengerCar(typePassCar: pCar)
} else {
    checkingTruckCar(typeTruckCar: tCar)
}
