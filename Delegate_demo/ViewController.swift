//
//  ViewController.swift
//  Delegate_demo
//
//  Created by Akash Patel on 24/01/18.
//  Copyright © 2018 Akash Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DemoDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnGoPressed(_ sender: Any) {
        
        let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! SecondVC
        secondVC.delegate = self
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
}

