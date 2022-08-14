//
//  ViewController.swift
//  ExchangeRateCalculator
//
//  Created by 김경훈 on 2022/08/11.
//

import UIKit

class ViewController: UIViewController{
    

    
    let country:[String] = ["대한민국", "미국", "중국", "일본", "유럽"]
    let images:[String] = ["korea.png", "usa.png", "china.png", "japan.png", "eu.png"]
    let count:[String] = ["원", "달러", "위안", "엔", "유로"]
    

    @IBOutlet weak var wonTextField: UITextField!
    @IBOutlet weak var dollarTextField: UITextField!
    @IBOutlet weak var euroTextField: UITextField!
    @IBOutlet weak var yenTextField: UITextField!
    @IBOutlet weak var yuanTextField: UITextField!
    
    
    
    
    
    func exchangerate(){
        
        let won:String = wonTextField.text!
        
        let dollar:Double = Double(won)! / 1302.38
        dollarTextField.text = String(format: "%.2f", dollar)
        
        let euro:Double = Double(won)! / 1336.7
        euroTextField.text = String(format: "%.2f", euro)
        
        let yen:Double = Double(won)! / 9.76
        yenTextField.text = String(format: "%.2f", yen)
        
        let yuan:Double = Double(won)! / 193.15
        yuanTextField.text = String(format: "%.2f", yuan)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        wonTextField.text = ""
        dollarTextField.text = ""
        euroTextField.text = ""
        yenTextField.text = ""
        yuanTextField.text = ""
        
    }
    
    @IBAction func wonTodollarBtn(_ sender: UIButton) {
        exchangerate()
    }
    
    

    
    
}

