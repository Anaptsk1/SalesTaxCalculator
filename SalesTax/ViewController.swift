//
//  ViewController.swift
//  SalesTax
//
//  Created by Ana Ptskialadze on 04.04.24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var afterTaxPriceTextField: UITextField!
    @IBOutlet weak var calculateButton: UIButton!
    
    var beforeTaxPrice: Float = 0
    var salesTaxRate: Float = 0
    
    override func viewDidLoad() {
        calculateButton.isEnabled = false
    }
    
    @IBAction func beforeTaxPriceChanged(_ sender: UITextField) {
        
        calculateButton.isEnabled = false
        
        if let value = Float(sender.text!) {
            beforeTaxPrice = value
            calculateButton.isEnabled = true
        } else {
            beforeTaxPrice = 0
        }
    }
    
    @IBAction func salesTaxRateChanged(_ sender: UITextField) {
        
        if let value = Float(sender.text!) {
            salesTaxRate = value
        } else {
            salesTaxRate = 0
        }
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        
        let salesTax = beforeTaxPrice * salesTaxRate / 100
        let afterTaxPrice = beforeTaxPrice + salesTax
        
        afterTaxPriceTextField.text = String(afterTaxPrice)
        
    }
    
}

