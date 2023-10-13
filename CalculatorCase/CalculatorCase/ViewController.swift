//
//  ViewController.swift
//  CalculatorCase
//
//  Created by Kaan Yıldırım on 8.10.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var processLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet var buttonsArray: [UIButton]!
    
    var process = "0"
    var mathPermission = 0
    
    var isProcess = false
    var isProcessPermision = false
    var isZeroPermission = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        processLabel.text = process
        resultLabel.text = ""
        
        let number1 = -2
        let number2 = -3
        let string = "\(number1)-\(number2)"
        let array = string.split(separator: "-")
        print(array)
        
        
        buttonsSize()
    }
    
    
    @IBAction func deleteProcess(_ sender: Any) {
        processLabel.text = "0"
        resultLabel.text = ""
        mathPermission = 0
        process = "0"
        isProcess = false
        isProcessPermision = false
        isZeroPermission = false
    }
    @IBAction func divideProcess(_ sender: Any) {
        if isProcess == false, isProcessPermision == true {
            process.append(Character("/"))
            processLabel.text = process
            isProcess = true
            isProcessPermision = false
        } else {
            if isProcessPermision == true {
                mathPermission = 0
                let processExtract = process.split(separator: "/")
                let number1 = Int(processExtract[0])!
                let number2 = Int(processExtract [1])!
                
                mathPermission = number1 / number2
                process = String(mathPermission)
                processLabel.text = String(mathPermission)
                resultLabel.text = String(mathPermission)
                isProcess = false
            } else { return }
        }
    }
    @IBAction func multipleProcess(_ sender: Any) {
        if isProcess == false, isProcessPermision == true {
            process.append(Character("*"))
            processLabel.text = process
            isProcess = true
            isProcessPermision = false
        } else {
            if isProcessPermision == true {
                mathPermission = 0
                let processExtract = process.split(separator: "*")
                let number1 = Int(processExtract[0])!
                let number2 = Int(processExtract [1])!
                
                mathPermission = number1 * number2
                process = String(mathPermission)
                processLabel.text = String(mathPermission)
                resultLabel.text = String(mathPermission)
                isProcess = false
            } else { return }
        }
    }
    @IBAction func minusProcess(_ sender: Any) {
        if isProcess == false, isProcessPermision == true {
            process.append(Character("-"))
            processLabel.text = process
            isProcess = true
            isProcessPermision = false
        } else {
            if isProcessPermision == true {
                mathPermission = 0
                let processExtract = process.split(separator: "-")
                let number1 = Int(processExtract[0])!
                let number2 = Int(processExtract [1])!
                
                mathPermission = number1 - number2
                process = String(mathPermission)
                processLabel.text = String(mathPermission)
                resultLabel.text = String(mathPermission)
                isProcess = false
            } else { return }
        }
    }
    @IBAction func plusProcess(_ sender: Any) {
        if isProcess == false, isProcessPermision == true {
            process.append(Character("+"))
            processLabel.text = process
            isProcess = true
            isProcessPermision = false
        } else {
            if isProcessPermision == true {
                mathPermission = 0
                let processExtract = process.split(separator: "+")
                let number1 = Int(processExtract[0])!
                let number2 = Int(processExtract [1])!
                
                mathPermission = number1 + number2
                process = String(mathPermission)
                processLabel.text = String(mathPermission)
                resultLabel.text = String(mathPermission)
                isProcess = false
            } else { return }
        }
    }
    @IBAction func equalProcess(_ sender: Any) {
        if isProcess == true, isProcessPermision == true {
            let expression = NSExpression(format: process)
            let result = expression.expressionValue(with: nil, context: nil) as! Double
            let resultString = formatResult(result: result)
            process = resultString
            processLabel.text = resultString
            resultLabel.text = resultString
            isProcess = false
            isProcessPermision = true
        }
    }
    
    func formatResult(result: Double) -> String {
        if (result.truncatingRemainder(dividingBy: 1) == 0) {
            return String(format: "%.0f", result)
        } else {
            return String(format: "%.2f", result)
        }
        
    }
    @IBAction func numbersButton(_ sender: UIButton) {
        
        switch sender.tag {
        case 0:
            if isZeroPermission == true {
                process.append(Character("\(sender.tag)"))
                processLabel.text = process
                isProcessPermision = true
            }
        case 1:
            numbersMethod(sender: sender)
        case 2:
            numbersMethod(sender: sender)
        case 3:
            numbersMethod(sender: sender)
        case 4:
            numbersMethod(sender: sender)
        case 5:
            numbersMethod(sender: sender)
        case 6:
            numbersMethod(sender: sender)
        case 7:
            numbersMethod(sender: sender)
        case 8:
            numbersMethod(sender: sender)
        case 9:
            numbersMethod(sender: sender)
        default:
            break
        }
    }
    
    private func numbersMethod(sender: UIButton) {
        if isZeroPermission == false {
            process = String(sender.tag)
            processLabel.text = process
            isZeroPermission = true
            isProcessPermision = true
        } else {
            process.append(Character("\(sender.tag)"))
            processLabel.text = process
            isProcessPermision = true
        }

    }
    
}

// MARK: - Size and Constraints
extension ViewController {
    private func buttonsSize() {
        for button in buttonsArray {
            makeConst(button)
            print(button.bounds.size.height)
            print(button.bounds.size.width)
            button.layer.cornerRadius = button.bounds.size.width / 2
            button.clipsToBounds = true
        }
    }
    
    private func makeConst(_ button: UIButton) {
        NSLayoutConstraint.activate([
            button.widthAnchor.constraint(equalTo:
            view.safeAreaLayoutGuide.widthAnchor,
                                          multiplier: 1/5),
            button.heightAnchor.constraint(equalTo: button.widthAnchor)
        ])
    }
}

