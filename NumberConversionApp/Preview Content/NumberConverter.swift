//
//  NumberConverter.swift
//  NumberConversionApp
//
//  Created by Carter M. Thomas on 9/20/23.
//

import SwiftUI

final class NumberConverter {
    func decimalToBinary(decimalInput: String) -> String {
        var binary: [String] = []
        var decimal = Int(decimalInput) ?? 0
        
        while decimal != 0 {
            if decimal % 2 == 0 {
                binary.append("0")
                decimal /= 2
            } else {
                binary.append("1")
                decimal /= 2
            }
        }
        
        binary.reverse()
        
        return binary.joined()
    }
    
    func binaryToDecimal(binaryInput: String) -> String {
        let reversedInput = binaryInput.reversed()
        var decimal = 0
        
        var i = 0
        for element in reversedInput {
            decimal += (Int(String(element)) ?? 0) * Int(pow(2.0, Double(i)))
            i += 1
        }
        
        return String(decimal)
    }
    
    func decimalToHex(decimalInput: String) -> String {
        var binary: [String] = []
        var decimal = Int(decimalInput) ?? 0
        
        while decimal != 0 {
            if decimal % 16 == 0 {
                binary.append("0")
                decimal /= 16
            } else {
                binary.append(String((decimal - (decimal/16)*16)))
                decimal /= 16
            }
        }
        
        binary = binary.map { element in
            switch element {
            case "10":
                return "A"
            case "11":
                return "B"
            case "12":
                return "C"
            case "13":
                return "D"
            case "14":
                return "E"
            case "15":
                return "F"
            default:
                return element
            }
        }
        
        binary.reverse()
        
        return binary.joined()
    }
    
    func hexToDecimal(hexInput: String) -> String {
        var formattedArray: [String] = []
        var decimal = 0
        
        for char in hexInput.uppercased() {
            switch char {
            case "A":
                formattedArray.append("10")
            case "B":
                formattedArray.append("11")
            case "C":
                formattedArray.append("12")
            case "D":
                formattedArray.append("13")
            case "E":
                formattedArray.append("14")
            case "F":
                formattedArray.append("15")
            default:
                formattedArray.append(String(char))
            }
        }
        
        formattedArray.reverse()
        
        var i = 0
        for element in formattedArray {
            decimal += (Int(element) ?? 0) * Int(pow(16.0, Double(i)))
            i += 1
        }
        
        return String(decimal)
    }
    
    func binaryToHex(binaryInput: String) -> String {
        return decimalToHex(decimalInput: binaryToDecimal(binaryInput: binaryInput))
    }
    
    func hexToBinary(hexInput: String) -> String {
        return decimalToBinary(decimalInput: hexToDecimal(hexInput: hexInput))
    }
}
