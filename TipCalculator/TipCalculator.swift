//
//  TipCalculator.swift
//  TipCalculator
//
//  Created by Harini Senthilkumar on 8/9/20.
//

import Foundation

class TipCalculator{
    var amountBeforeTip:Double=0
    var tipAmount:Double=0
    var tipPercentage:Double=0
    var totalAmount:Double=0

    init(amountBeforeTip:Double,tipPercentage:Double){
        self.amountBeforeTip=amountBeforeTip
        self.tipPercentage=tipPercentage
    }
    func calculateTip(){
        tipAmount=amountBeforeTip*tipPercentage
        totalAmount=tipAmount+amountBeforeTip
    }
    
}
