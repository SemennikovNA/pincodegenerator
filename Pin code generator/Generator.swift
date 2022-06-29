//  Generator.swift
//  Pin code generator
//
//  Created by rezra on 29.06.2022.
//

import Foundation

struct Generator {
    
    //MARK: - Properties
    var numb: [Int] = []
    
    //MARK: - Methods
    // Данная функция генерирует 4 случайные цифры
    func generateNumber(_ n: Int) -> [Int] {
        return (0...3).map{ _ in Int.random(in: 0...9) }
    }
    // Данная функция наполняет массив цифрами получеными в функции выше
    mutating func appendNumber() {
        numb = generateNumber(3)
        print(numb)
    }
}
