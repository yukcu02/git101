//
//  main.swift
//  week-1homeworks
//
//  Created by Furkan Yükcü on 13.03.2023.
//
import Foundation
var biggestPalindrome = 0
for i in 100...999{
    for j in 100...999{
        let product = i*j
        let productString = String(product)
//        we can read as string to convert
        let reversedStringProduct = String(productString.reversed())
        if productString == reversedStringProduct && product > biggestPalindrome{biggestPalindrome = product
        }
    }
}
print(biggestPalindrome)
