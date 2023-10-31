//
//  ViewController.swift
//  Nangunoori_Assignment02
//
//  Created by vinaycharynangunoori on 9/8/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameOutlet: UITextField!
   
   
    @IBOutlet weak var billAmountOutlet: UITextField!
    
    @IBOutlet weak var tipPercentageOutlet: UITextField!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var billAmountLabel: UILabel!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func SubmitBTN(_ sender: UIButton) {
        
                var name = nameOutlet.text!
                var billAmount = billAmountOutlet.text!
                var tipPercentage = tipPercentageOutlet.text!
                //converting string into double
                guard var tip = Double(tipPercentage), var bill = Double(billAmount) else{
                    print("Value is not entered")
                    return
                }
                
                var tipAmountin = (bill * tip)/100
               var totalAmount = bill + tipAmountin
                var roundedtipAmountin = String(format: "%.2f",tipAmountin)
                var roundedtotalAmount = String(format: "%.2f",totalAmount)
                
                
                nameLabel.text = "Name: \(name)"
                billAmountLabel.text = "Bill Amount: $\(bill)"
                tipAmountLabel.text = "Tip Amount: $\(roundedtipAmountin)"
                totalAmountLabel.text = "Total Amount : $\(roundedtotalAmount)"
    }
    
    
    @IBAction func ResetBTN(_ sender: UIButton) {
        nameLabel.text = ""
        billAmountLabel.text = ""
        tipAmountLabel.text = ""
        totalAmountLabel.text = ""
        nameOutlet.text = ""
        billAmountOutlet.text = ""
        tipPercentageOutlet.text = ""
        
    }
    
}

    
