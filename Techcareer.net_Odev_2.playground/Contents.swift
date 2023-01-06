import UIKit

class Functions{
    
    func no1CelsiusToFahrenhiat(celsius: Double) -> Double{
        (celsius * 1.8) + 32
    }
    
    func no2PerimeterOfRectangle(width: Int, length: Int) -> Int?{
        
        if width > 0 && length > 0{
            return 2 * (width + length)
        }else{
            print("Uzunluk ve Genişlik negatif olamaz.")
            return nil
        }
    }
    
    func no3Factorial(of number: Int) -> Int?{
        
        if number < 0{
            print("Lütfen 0'dan büyük sayı giriniz")
            return nil
        }else if number == 0 {
            return 1
        }else{
            var result = 1
            for i in 1...number{
                result *= i
            }
            return result
        }
    }
    
    func no4CountLetterA(in word: String) -> Int{
        
        var counter = 0
        for i in word{
            if i == "a"{
                counter += 1
            }
        }
        
        return counter
    }
    
    func no5SumOfInteriorAngles(cornerCount: Int) -> Int{
        (cornerCount - 2) * 180
    }
    
    func no6CalculateSalart(with day: Int) -> Int{
        let workHour = day * 8
        
        if workHour < 160{
            return 10 * workHour
        }else{
            return 1600 + (workHour - 160) * 20
        }

    }
    
    func no7InternetPrice(usage: Int) -> Int{
        
        var price = 100
        if usage > 50{
            price += (usage - 50) * 4
        }
        
        return price
    }
    
}

let function = Functions()

let no1 = function.no1CelsiusToFahrenhiat(celsius: 100)
print(no1)

let no2 = function.no2PerimeterOfRectangle(width: 5, length: 12)
if let no2 = no2 {
    print(no2)
}

let no3 = function.no3Factorial(of: 5)
if let no3 = no3 {
    print(no3)
}

let no4 = function.no4CountLetterA(in: "ankara")
print(no4)

let no5 = function.no5SumOfInteriorAngles(cornerCount: 3)
print(no5)

let no6 = function.no6CalculateSalart(with: 21)
print(no6)

let no7 = function.no7InternetPrice(usage: 51)
print(no7)
