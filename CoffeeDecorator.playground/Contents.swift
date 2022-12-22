import UIKit


//MARK: - Base protocol

protocol Coffee {
    var cost: Int { get }
}

//MARK: - Base class

class SimpleCoffee: Coffee {
    var cost: Int {
        return 60
    }
}

//MARK: - Decorator protocol

protocol CoffeeDecorator: Coffee {
    var base: Coffee { get }
    init (base: Coffee)
}

//MARK: - Decorators

class Sugar: CoffeeDecorator {
    let base: Coffee
    
    var cost: Int {
        return base.cost + 10
    }
    required init(base: Coffee) {
        self.base = base
    }
}

class Cinnamon: CoffeeDecorator {
    let base: Coffee
    
    var cost: Int {
        return base.cost + 10
    }
    required init(base: Coffee) {
        self.base = base
    }
}

class Milk: CoffeeDecorator {
    let base: Coffee
    
    var cost: Int {
        return base.cost + 15
    }
    
    required init(base: Coffee) {
        self.base = base
    }
}

class Cream: CoffeeDecorator {
    let base: Coffee
    
    var cost: Int {
        return base.cost + 15
    }
    
    required init(base: Coffee) {
        self.base = base
    }
}

class ToppingCoconut: CoffeeDecorator {
    let base: Coffee
    
    var cost: Int {
        return base.cost + 15
    }
    
    required init(base: Coffee) {
        self.base = base
    }
}

class Whip: CoffeeDecorator {
    let base: Coffee
    
    var cost: Int {
        return base.cost + 20
    }
    required init(base: Coffee) {
        self.base = base
    }
}

//MARK: - Cost of finished coffee

let coffe = SimpleCoffee()
coffe.cost

let coffeWithSugar = Sugar(base: coffe)
coffeWithSugar.cost

let coffeWithSugarAndMilk = Milk(base: coffeWithSugar)
coffeWithSugarAndMilk.cost

let coffeeWithSugarAndMilkAndTopping = ToppingCoconut(base: coffeWithSugarAndMilk)
coffeeWithSugarAndMilkAndTopping.cost

let coffeeWithCream = Cream(base: coffe)
coffeeWithCream.cost
