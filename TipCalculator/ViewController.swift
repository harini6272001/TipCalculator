//
//  ViewController.swift
//  TipCalculator
//
//  Created by Harini Senthilkumar on 8/3/20.
//
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var tipPercentageSlider: UISlider!
    @IBOutlet weak var spiltNumberLabel: UILabel!
    @IBOutlet weak var spiltNumberSlider: UISlider!
    
    @IBOutlet weak var totalSpiltLabel: UILabel!
    @IBOutlet weak var totalResultLabel: UILabel!
    
    var tipCalculator=TipCalculator(amountBeforeTip:0, tipPercentage:0)
    override func viewDidLoad() {
        super.viewDidLoad()
        billAmount.becomeFirstResponder()
        // Do any additional setup after loading the view.
    }
    func billCalculation(){
        let x=Int(tipPercentageSlider.value)
        tipCalculator.tipPercentage=Double(x)/100
        tipCalculator.amountBeforeTip=(billAmount.text! as NSString).doubleValue
        tipCalculator.calculateTip()
        totalResultLabel.text=String(format:"$ %.2f",tipCalculator.totalAmount)
        let numberOfPeople:Int=Int(spiltNumberSlider.value)
        totalSpiltLabel.text=String(format:"$ %.2f",tipCalculator.totalAmount/Double(numberOfPeople))
    }

    
    @IBAction func onTap(_ sender: Any) {
    }
    
    @IBAction func tipPercentageChange(_ sender: Any) {
        tipPercentageLabel.text=String(format:"Tip: %02d%%" ,Int(tipPercentageSlider.value))
        billCalculation()
    }
    
    @IBAction func spiltNumberChange(_ sender: Any) {
        spiltNumberLabel.text="Spilt:\(Int(spiltNumberSlider.value))"
        billCalculation()
    }
    
    @IBAction func amountBefore(_ sender: Any) {
        billCalculation()
    }
    

        
    
}


