import UIKit

class Task2 {
    // Parametre olarak girilen kilometreyi mile dönüştürdükten sonra geri döndüren bir metod yazınız. Mile = Km x 0.621
    func mile(kilometer: Double) -> Double {
        let mile = kilometer * 0.621
        return mile
    }
    
    // Kenarları parametre olarak girilen ve dikdörtgenin alanını hesaplayan bir metod yazınız.
    func area(shortSide: Double, longSide: Double) {
        let calculateArea = shortSide * longSide
        print("Area of Rectangle: \(calculateArea)")
    }
    
    // Parametre olarak girilen sayının faktoriyel değerini hesaplayıp geri döndüren metodu yazınız.
    func factoriel(number: Int) -> Int {
        var factoriel = 1
        
        if number >= 0 {
            for i in stride(from: number, to: 1, by: -1) {
                factoriel *= i
            }
            
            return factoriel
        } else {
            return 0
        }
    }
    
    // Parametre olarak girilen kelime içinde kaç adet e harfi olduğunu gösteren bir metod yazınız.
    func word(word: String) {
        let character: Character = "e"
        let count = word.filter { $0 == character }.count
        print("Total Letter For '\(character)': \(count)")
    }
    
    // Parametre olarak girilen kenar sayısına göre her bir iç açıyı hesaplayıp sonucu geri gönderen metod yazınız.
    // İç açılar toplamı = ((Kenar sayısı - 2) x 180) / Kenar sayısı
    func edge(edgeCount: Int) -> Int {
        let sumOfInteriorAngles = ((edgeCount - 2) * 180) / edgeCount
        return sumOfInteriorAngles
    }
    
    // Parametre olarak girilen gün sayısına göre maaş hesabı yapan ve elde edilen değeri döndüren metod yazınız.
    // 1 günde 8 saat çalışılabilir. • Çalışma saat ücreti : 40 ₺
    // Mesai saat ücreti : 80 ₺
    // 150 saat üzeri mesai sayılır.
    func wage(dayCount: Int) -> Int {
        if dayCount > 30 || dayCount < 0 {
            print("Please use available Day (For Month).")
            return 0
        }
        
        var wage: Int = 0
        let hours = dayCount * 8
        
        if hours > 150 {
            var overtime = hours - 150
            wage = (overtime * 80) + (150 * 40)
        } else {
            wage = hours * 40
        }
        
        return wage
    }
    
    // Parametre olarak girilen otopark süresine göre otopark ücreti hesaplayarak geri döndüren metodu yazınız.
    // 1 saat = 50 ₺
    // 1 saat aşımından sonra her 1 saat , 10 ₺’dir.
    func parkingFee(hours: Int) -> Int {
        var fee: Int = 0
        
        if hours < 1 {
            print("Please use an available Value (For Hours).")
        } else if hours == 1 {
            fee = 50
        } else {
            fee = 50 + ((hours - 1) * 10)
        }
        
        return fee
    }
}

let task2 = Task2()
// ---------------------------------------------------
let mile = task2.mile(kilometer: 50)
print(mile)
// ---------------------------------------------------
task2.area(shortSide: 5.4, longSide: 10.8)
// ---------------------------------------------------
let factoriel = task2.factoriel(number: 18)
print(factoriel)
// ---------------------------------------------------
task2.word(word: "This is an example of word function. Lets see how many letters we use.")
// ---------------------------------------------------
let sumOfInteriorAngles = task2.edge(edgeCount: 5)
print("Sum of Interior Angles: \(sumOfInteriorAngles)")
// ---------------------------------------------------
let wage = task2.wage(dayCount: -2)
print("Total Wage: \(wage)")
// ---------------------------------------------------
let parkingFee = task2.parkingFee(hours: 10)
print("Parking Fee: \(parkingFee)")
