//
//  ViewController.swift
//  DiscountAppMVC
//
//  Created by Nangunoori,Vinay Chary on 10/31/23.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var discountAppLabelOL: UILabel!
    
    
    @IBOutlet weak var enterAmountOL: UITextField!
    
    
    @IBOutlet weak var enterDiscountOL: UITextField!
    
    var priceAfterDiscount = 0.0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func calculateButtonOL(_ sender: Any) {
        
        
        var enterAmount =  Double(enterAmountOL.text!)
        
        var enterDiscount = Double(enterDiscountOL.text!)
        
        priceAfterDiscount = enterAmount! - (enterAmount!*enterDiscount!/100)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "resultSegue"{
            
            var destination = segue.destination as! ResultViewController
            
            destination.amount = enterAmountOL.text!
            destination.discRate = enterDiscountOL.text!
            destination.priceAfterDiscount = priceAfterDiscount
        }
    }
    
    

}

