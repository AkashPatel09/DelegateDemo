//
//  SecondVC.swift
//  Delegate_demo
//
//  Created by Akash Patel on 24/01/18.
//  Copyright © 2018 Akash Patel. All rights reserved.
//

import UIKit

@objc protocol DemoDelegate {
    
    @objc optional func getTextFieldDate(data:String)
}

class SecondVC: UIViewController {
    
    @IBOutlet var textField: UITextField!
    @IBOutlet var btnClick: UIButton!
    
    var delegate : DemoDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnClickPressed(_ sender: Any) {
        
        delegate?.getTextFieldDate!(data: textField.text!)
    }

}
