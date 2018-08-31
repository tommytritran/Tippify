//
//  ViewController.swift
//  Tippify
//
//  Created by Tommy Tran on 28/08/2018.
//  Copyright © 2018 Tommy Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var totalBill: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var total2Label: UILabel!
    @IBOutlet weak var total3Label: UILabel!
    @IBOutlet weak var total4Label: UILabel!
    @IBOutlet weak var total5Label: UILabel!
    

    @IBOutlet weak var tipSeg: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tippify"
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for:UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        totalBill.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let tipValue = [0.15, 0.18, 0.2]
        let bill = Double(totalBill.text!) ?? 0
        let tip = bill * tipValue[tipSeg.selectedSegmentIndex]
        let total = bill + tip
        let total2 = total / 2
        let total3 = total / 3
        let total4 = total / 4
        let total5 = total / 5
        
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        total2Label.text = String(format: "$%.2f",total2)
        total3Label.text = String(format: "$%.2f",total3)

        total4Label.text = String(format: "$%.2f",total4)

        total5Label.text = String(format: "$%.2f",total5)
        
    }
    
}

