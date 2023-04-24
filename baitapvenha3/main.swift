//
//  main.swift
//  baitapvenha3
//
//  Created by USER on 22/04/2023.
//

import Foundation

print("Hello, World!")


//
func cau1() {}

func isPrime(_ number: Int) -> Bool {
    return number > 1 && !(2..<number).contains { number % $0 == 0 }
}
print("Nhập a: ")
let x = Int(readLine() ?? "") ?? 0
print(" Nhập b: ")
let z = Int(readLine() ?? "") ?? 0
var count = 0
var output: [Int] = []
for i in x...z {
    if isPrime(i) == true { // neeus i la so nguyen to thi
        count = count + 1
        output.append(i)
        // thi se them i vao mang output
    }
}
print("có số nguyên tố troang khoảng [\(x), \(z)] là: \(count) số ")
print("các số nguyên tố là: \(output)")
//


func cau2() {}

print("nhập tháng: ")
let month1 = Int(readLine() ?? "") ?? 0
print("nhập năm: ")
let year1 = Int(readLine() ?? "") ?? 0
func calenda(m: Int, y: Int) {
    if (m > 0 && m <= 12){
        switch(m) {
        case 1: print("tháng có 31 ngày")
        case 3: print("tháng có 31 ngày")
        case 5: print("tháng có 31 ngày")
        case 7: print("tháng có 31 ngày")
        case 8: print("tháng có 31 ngày")
        case 10: print("tháng có 31 ngày")
        case 12: print("tháng có 31 ngày")
        case 4: print("tháng có 30 ngày")
        case 6: print("tháng có 30 ngày")
        case 9: print("tháng có 30 ngày")
        case 11: print("tháng có 30 ngày")
        case 2: if ( (year1 % 4 == 0 && year1 % 100 != 0) || (year1 % 400 == 0)) {
            print("\(year1) là năm nhuận, có 29 ngày")
        } else {
            print("\(year1) không phải là năm nhuận, có 28 ngày")
        }
        default: break

        }
    }
}
calenda(m: month1, y: year1)
print(calenda)

func cau3(){}

print("nhap ngay: ")
let day = Int(readLine() ?? "") ?? 0
print("nhap thang: ")
let month = Int(readLine() ?? "") ?? 0
print("nhap nam: ")
let year = Int(readLine() ?? "") ?? 0

func dateFormat(day: Int, month: Int, year: Int) {
    let dateString: String = "\(year)/\(month)/\(day)"
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy/MM/dd"
    formatter.timeZone = TimeZone(abbreviation: "UTC")
    let dateInput = formatter.date(from: dateString)
    print("Ngày nhập \(dateInput!)")
    let yesterday = dateInput?.dayBefore
    print("Ngày hôm qua \(yesterday!)")
    let tommorrow = dateInput?.dayAfter
    print("Ngày hôm kia \(tommorrow!)")

//    let lastmonth = dateInput?.monthBefore
//    print("tháng trước \(lastmonth!)")
//    let nextmont = dateInput?.monthAfter
//    print("tháng sau \(nextmont!)")

}
dateFormat(day: day, month: month, year: year)
print(dateFormat)
extension Date {
    var dayBefore: Date {
        return Calendar.current.date(byAdding: .day, value: -1, to: self)!
    }
    var dayAfter: Date {
        return Calendar.current.date(byAdding: .day, value: 1, to: self)!
    }
//    var monthBefore: Date {
//        return Calendar.current.date(byAdding: .month, value: -1, to: self)!
//    }
//    var monthAfter: Date {
//        return Calendar.current.date(byAdding: .month, value: 1, to: self)!
//    }
}


func cau9(){}

print("nhạp giá trị a: ")
let a = Double(readLine() ?? "") ?? 0
print("nhập giá trị b: ")
let b = Double(readLine() ?? "") ?? 0
print("nhập giá trị c: ")
let c = Double(readLine() ?? "") ?? 0

func caculator(a: Double, b: Double, c: Double ) {
    var delta: Double = (b * b) - (4 * a * c)
    if delta < 0 {
        print("Phương trình vô nghiệm")
    } else if delta > 0 {
        print("Nghiệm của phương trình là : x1 = [\((-b + sqrt(delta)) / (2 * a))], x2 = [\((-b - sqrt(delta)) / (2 * a))]")
    } else if delta == 0 {
        print("Nghiệm của phương trình là: x = [\(-b / (2 * a))]")
    }
}
caculator(a: a, b: b, c: c)

func cau7(){}

print("nhap so a: ")
let l = Int(readLine() ?? "") ?? 0
func Sum(_ n : Int) -> Int {
var n = n
var sum = 0
while n > 0 {
        sum += n % 10
        n /= 10
    }
    return sum
}
print("tổng các số là: \(Sum(l))")



func cau8(){}

print("nhap so bat ky: ")
let input = Int(readLine() ?? "") ?? 0

let inputString = "\(input)"

let reverseInput = String(inputString.reversed())

if reverseInput == inputString {
    print("Day la so doi xung")
} else {
    print("Day khong phai la so doi xung")
}


