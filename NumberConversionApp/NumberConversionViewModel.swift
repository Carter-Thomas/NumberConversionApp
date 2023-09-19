import SwiftUI

final class NumberConversionViewModel: ObservableObject {
    @Published var input: String
    @Published var result: String
    @Published var selectedConversion: ConversionType
    
    let numberConverter = NumberConverter()
    
    init() {
        input = ""
        result = ""
        selectedConversion = .decimalToBinary
    }
    
    func inputUpdate() {
        switch selectedConversion {
        case ConversionType.decimalToBinary:
            result = numberConverter.decimalToBinary(decimalInput: input)
        case ConversionType.binaryToDecimal:
            result = numberConverter.binaryToDecimal(binaryInput: input)
        case ConversionType.decimalToHex:
            result = numberConverter.decimalToHex(decimalInput: input)
        case ConversionType.hexToDecimal:
            result = numberConverter.hexToDecimal(hexInput: input)
        case ConversionType.binaryToHex:
            result = numberConverter.binaryToHex(binaryInput: input)
        case ConversionType.hexToBinary:
            result = numberConverter.hexToBinary(hexInput: input)
        }
    }
}
