//
//  main.swift
//  week2assignment1
//
//  Created by Furkan Yükcü on 15.03.2023.

//Bir sayının asal olup olmadığını bulan bir fonksiyon yazınız.
var counter = 0
func primeNumber(Num : Int) {
    for i in 1...Num {
        if Num % i == 0 {
            counter += 1
        }
    }
    if (counter > 2) {
        print ("\(Num) is not a prime number.")
    }
    else {
        print ("\(Num) is a prime number.")
    }
}
primeNumber(Num: 97)

// Fonksiyona parametre olarak verilen sayıya göre + - karakterlerini ekrana yazdıran bir fonksiyon yazınız.
// Örneğin 1 için sadece +, 2 için +-, 5 için +-+-+ olmalıdır
func oppositeSign(Num : Int){
    var String = ""
    for i in 1...Num {
        if i % 2 == 0 {
            String = String +  "-"
        }
        else {
            String = String + "+"
        }
    }
    print(String)
}
oppositeSign(Num: 11)

// ODEV: Bir sınıfta en az bir yazılım dilini bilenlerin sayısı 24, sadece swift bilenler 12, sadece kotlin bilenler 8 olduğuna göre her iki dili bilen kaç kişi vardır?
import Foundation

let studentNumber: Set = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24]
let swiftOnly: Set = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
let kotlinOnly: Set = [13, 14, 15, 16, 17, 18, 19, 20]

let bothLanguages = studentNumber.subtracting(swiftOnly.union(kotlinOnly))

print("The number of people who know both languages is \(bothLanguages.count) .")
