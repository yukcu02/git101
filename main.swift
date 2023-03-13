//
//  main.swift
//  week-1homeworks
//
/*  Created by Furkan Yükcü on 13.03.2023.A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.Find the largest palindrome made from the product of two 3-digit numbers.
*/
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
