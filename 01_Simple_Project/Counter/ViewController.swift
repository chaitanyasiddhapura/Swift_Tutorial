//
//  ViewController.swift
//  Counter
//
//  Created by vijay on 15/01/26.
//

import UIKit

class ViewController: UIViewController {
    
    var val = 0
   
    @IBOutlet weak var lblCounter: UILabel!
    
    @IBAction func OnButton(_ sender: Any) {
        val = val + 1
        lblCounter.text = "Counter: \(val)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lblCounter.text = "Counter: \(val)"
    }
}

