//
//  ViewController.swift
//  Pin code generator
//
//  Created by rezra on 29.06.2022.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - Properties
    var buttonUpdateNumber = UIButton()
    var numberLabel = UILabel()
    var generate = Generator()
    var displayNumb = [String]()
       
    
    //MARK: - Methods
    
//   При нажатии кнопки массив проверяется на содержание, если массив полон то информация удаляется и массив наполняется заново
    @objc func buttonUpdateNumberPressed() {
        if displayNumb.isEmpty == false {
            displayNumb.removeAll()
        } else {
            numberString()
        }
        generate.appendNumber()
        numberString()
        print(displayNumb)
    }
    
//    Массив полученный случайной генерацией преобразовывется в строку для вывода информации в UILabel
    func numberString() {
        for number in generate.numb {
            displayNumb.append(String(number))
        }
        numberLabel.text = displayNumb.joined(separator: " ")
    }
     
    override func viewDidLoad() {
        super.viewDidLoad()
        buttonUpdateNumberPressed()
        
        // View setting
        view.backgroundColor = UIColor(named: "nudeColor")
        
        // Button setting
        buttonUpdateNumber = UIButton(frame: CGRect(x: 85, y: 400, width: 150, height: 50))
        buttonUpdateNumber.backgroundColor = .black
        buttonUpdateNumber.setTitle("Press generate", for: .normal)
        buttonUpdateNumber.setTitleColor(.white, for: .normal)
        buttonUpdateNumber.addTarget(self, action: #selector(buttonUpdateNumberPressed), for: .touchUpInside)
        self.view.addSubview(buttonUpdateNumber)
         
        // Label setting
        numberLabel = UILabel(frame: CGRect(x: 65, y: 200, width: 200, height: 100))
        numberLabel.backgroundColor = UIColor(named: "nudeColor")
        numberLabel.textColor = .black
        numberLabel.textAlignment = .center
        numberLabel.font = UIFont.systemFont(ofSize: 50.0)
        self.view.addSubview(numberLabel)
    }
  
}

