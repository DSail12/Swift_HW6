// Создать структуру работника пиццерии. В ней должны быть такие свойства, как имя, зарплата и должность.
// Должностей пока может быть две: или кассир, или повар.
// Добавить в класс пиццерии массив с работниками.
// Создать класс столика, в нём должно быть свойство, в котором содержится количество мест и функция, которая на вход принимает количество гостей, которое хотят посадить, а возвращает true, если места хватает и false, если места не хватает. Изначальное количество мест задаётся в инициализаторе.
// Добавить в класс пиццерии свойство, в котором хранится массив столиков. У класса столика добавить свойство, в котором хранится кафе, в котором стоит столик. Столики создаются сразу в инициализаторе, не передаются туда в качестве параметра.


struct PizzaWorker {
    var name: String
    var salary: Double
    var position: String
}
// Добавляем работников.

let worker0 = PizzaWorker(name: "Семен", salary: 45000, position: "Кассир")
let worker1 = PizzaWorker(name: "Григорий", salary: 90000, position: "Повар")
let worker2 = PizzaWorker(name: "Инокентий", salary: 46000, position: "Кассир")
let worker3 = PizzaWorker(name: "Маргарита", salary: 92000, position: "Повар")

class Pizzeria {
    var workers: [PizzaWorker]
    var tables: [Table]
    
        
    init(workers: [PizzaWorker], tables: [Table]) {
        self.workers = workers
        self.tables = []
        setupTables()
        
    }
    // Добавляем столики.
    
    func setupTables() {
        let table0 = Table(numberOfSeats: 11, cafe: "Пиццерия Linda")
        let table1 = Table(numberOfSeats: 8, cafe: "Пиццерия Costa")
        let table2 = Table(numberOfSeats: 13, cafe: "Пиццерия Vanila")
        let table3 = Table(numberOfSeats: 15, cafe: "Пиццерия Regina")
            
            tables.append(table0)
            tables.append(table1)
            tables.append(table2)
            tables.append(table3)
        }
    
}


class Table {
    var numberOfSeats: Int
    var cafe: String
    
    init(numberOfSeats: Int, cafe: String) {
        self.numberOfSeats = numberOfSeats
        self.cafe = cafe
    }

    func checkAvailability(for guests: Int) -> Bool {
        return guests <= numberOfSeats
    }
}

let table = Table(numberOfSeats: 5, cafe: "Cafe1")

// Проверяем доступность мест.

let guests1 = 2
let guests2 = 7

let isAvailable1 = table.checkAvailability(for: guests1)
let isAvailable2 = table.checkAvailability(for: guests2)

print("Мест хватает для \(guests1) гостей: \(isAvailable1)")
print("Мест хватает для \(guests2) гостей: \(isAvailable2)")

