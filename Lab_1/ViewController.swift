//  Name : Vidhi Jadav (Student ID = 8770328)
//  Group Members :
//  Mihirkumar Kantibhai Bhoi (8806787)
//  Shrutiben Sanjaybhai Parikh (8804536)
//  Sohilmahammad Liyakatali Polara (8773995)
//  Mubassir Ahmed Turjo (8787121)
//
//  ViewController.swift
//  Lab_1
//
//
//  Created by user204866 on 1/19/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ShowOutput: UILabel!
    @IBOutlet weak var Add: UIButton!
    @IBOutlet weak var Minus: UIButton!
    @IBOutlet weak var Reset: UIButton!
    @IBOutlet weak var Step: UIButton!
    
    var num = 0
    var stepValue = 1
       
    // resetting all values
    func reset()
    {
        num = 0
        stepValue = 1
        Step.isSelected = false
        ShowOutput.text = String(num)
        Step.setTitle("Step = " + String(stepValue), for: .normal)
        Step.backgroundColor = UIColor.darkGray
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        reset()
    }
    
    // incrementing number by step value
    @IBAction func Add(_ sender: Any) {
        num += stepValue
        ShowOutput.text = String(num)
    }
    
    // decrementing number by step value
    @IBAction func Minus(_ sender: Any) {
        num -= stepValue
        ShowOutput.text = String(num)
    }
            
    @IBAction func Reset(_ sender: Any) {
        reset()
    }
    
    @IBAction func Step(_ sender: UIButton) {
        sender.isSelected.toggle()
        
        // checking value of step button
        if sender.isSelected {
            stepValue = 2
            sender.backgroundColor = UIColor.black
        }else{
            stepValue = 1
            sender.backgroundColor = UIColor.darkGray
        }
        Step.setTitle("Step = " + String(stepValue), for: .normal) // displaying current step value
    }
}
