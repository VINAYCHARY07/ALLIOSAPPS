//
//  ViewController.swift
//  Nangunoori_CalculatorApp
//
//  Created by Nangunoori,Vinay Chary on 9/25/23.
//

import UIKit

class ViewController: UIViewController {
    
    var operand1 = ""
    var operand2 = ""
    var _operator=""
    var output = ""
    var check=false
    
    
    @IBOutlet weak var resultOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func buttonAC(_ sender: Any) {
        resultOutlet.text!=""
        operand1 = ""
        operand2 = ""
        _operator=""
    }
    
    @IBAction func buttonC(_ sender: UIButton) {
        
        if(operand1.isEmpty) {
            resultOutlet.text!.remove(at: resultOutlet.text!.index(before: resultOutlet.text!.endIndex))
        } else {
            resultOutlet.text!.remove(at: resultOutlet.text!.index(before: resultOutlet.text!.endIndex))
            operand2 = resultOutlet.text!
        }
        
    }
    
    
    @IBAction func signChange(_ sender: UIButton) {
        if (_operator == "+"){
            resultOutlet.text = "\(-Int(operand1)!)"
            operand2 = "-" + operand2
        }
        else {
            resultOutlet.text! = "\(-Int(operand2)!)"
            operand2 = "+" + operand2
        }
        _operator = "+/-"
    }
    
    
    @IBAction func divided(_ sender: UIButton) {
        _operator="/"
        check=true
        operand1=resultOutlet.text!
    }
    
    @IBAction func ButtonSeven(_ sender: UIButton) {
        clicked(number: 7)
    }
    
    @IBAction func ButtonEight(_ sender: UIButton) {
        clicked(number: 8)
    }
    
    @IBAction func ButtonNine(_ sender: UIButton) {
        clicked(number: 9)
    }
    
    @IBAction func Multiply(_ sender: UIButton) {
        _operator="*"
        check=true
        operand1=resultOutlet.text!
    }
    
    @IBAction func ButtonFour(_ sender: UIButton) {
        clicked(number: 4)
    }
    
    @IBAction func ButtonFive(_ sender: UIButton) {
        clicked(number: 5)
    }
    
    @IBAction func ButtonSix(_ sender: UIButton) {
        clicked(number: 6)
    }
    
    @IBAction func Substarction(_ sender: UIButton) {
        _operator="-"
        check=true
        operand1=resultOutlet.text!
    }
    
    
    @IBAction func ButtonOne(_ sender: UIButton) {
        
        clicked(number: 1)
    }
    
    @IBAction func ButtonSecond(_ sender: UIButton) {
        clicked(number: 2)
    }
    
    @IBAction func ButtonThree(_ sender: UIButton) {
        clicked(number: 3)
    }
    
    @IBAction func Addition(_ sender: UIButton) {
        
        _operator="+"
        check=true
        operand1=resultOutlet.text!
    }
    
    @IBAction func Button0(_ sender: UIButton) {
        clicked(number: 0)
    }
    
    
    @IBAction func Point(_ sender: UIButton) {
        resultOutlet.text! = resultOutlet.text!+"."
        
    }
    
    @IBAction func Percentage(_ sender: UIButton) {
        _operator="%"
        check=true
        operand1=resultOutlet.text!
    }
    
    @IBAction func Equals(_ sender: UIButton) {
       
        if(_operator == "+"){
            output = String((Double(operand1)! + Double(operand2)!))
        }
        else{
            if(_operator == "-"){
                output = String(Int(Double(operand1)! - Double(operand2)!))
            } else {
                if(_operator == "/"){
                    if(Double(operand2)! == 0.0) {
                        output = "Not a number"
                    } else {
                        let d = Double(Double(operand1)! / Double(operand2)!)
                        
                        output = String(round(d * 100000)/100000.0)
                    }
                    
                } else {
                    if(_operator == "*"){
                        output = String(Int(Double(operand1)! * Double(operand2)!))
                    } else if(_operator == "%"){
                        var c = Double(Double(operand1)! .truncatingRemainder(dividingBy:  Double(operand2)!))
                        output = String(round(c * 100)/100.0)
                    } else{
                        output = String(Int(Double(operand1)! + Double(operand2)!))
                        
                    }
                }
            }
        }
        if output.hasSuffix(".0") {
            output = String(Int(Double(output)!))
        }
        resultOutlet.text! = output
        
    }
    
    func clicked(number : Int){
        
      
        
        if(_operator.isEmpty){
            resultOutlet.text! = resultOutlet.text! + String(number)
            
            
        }
        else{
            if(check) {
                resultOutlet.text! = String(number)
                check = false
                operand2=resultOutlet.text!
            } else {
                resultOutlet.text! = resultOutlet.text! + String(number)
                operand2=resultOutlet.text!
            }
            
        }
    }
    
    
    
}

