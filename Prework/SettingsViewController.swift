//
//  SettingsViewController.swift
//  Prework
//
//  Created by Shane Patra on 2021/1/26.
//

import UIKit

var tip1 = Double(15)
var tip2 = Double(18)
var tip3 = Double(20)
var memoIsOn = true

class SettingsViewController: UIViewController {

    @IBOutlet weak var setTip1: UITextField!
    @IBOutlet weak var setTip2: UITextField!
    @IBOutlet weak var setTip3: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setTip1.text = String(Int(tip1))
        setTip2.text = String(Int(tip2))
        setTip3.text = String(Int(tip3))
    }

    @IBAction func changeValue(_ sender: Any) {
        // Get default value from text field input
        if (Double(setTip1.text!) ?? tip1 > 100){
            tip1 = 100.00
            setTip1.text = String(Int(tip1))
        }
        if (Double(setTip2.text!) ?? tip2 > 100){
            tip2 = 100.00
            setTip2.text = String(Int(tip2))
        }
        if (Double(setTip3.text!) ?? tip3 > 100){
            tip3 = 100.00
            setTip3.text = String(Int(tip3))
        }
        
        tip1 = Double(setTip1.text!) ?? 0
        tip2 = Double(setTip2.text!) ?? 0
        tip3 = Double(setTip3.text!) ?? 0
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
