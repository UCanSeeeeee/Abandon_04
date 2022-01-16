//
//  ViewController.swift
//  NumberDemo
//
//  Created by 王杰 on 2022/1/14.
//

import UIKit

class ViewController: UIViewController {

    var intNumber = 0
    var doubleNumber = 0.0
    var changeNumber = 1
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }
    @IBAction func clickButton(_ sender: UIButton) {
       intNumber += changeNumber
       doubleNumber += Double(changeNumber)
        if intNumber >= 10 || intNumber <= 0 {
            changeNumber *= -1
        }
        updateUI()

     }
    
    func updateUI() {
        let title = changeNumber > 0 ? "+\(changeNumber)" : "\(changeNumber)"
        label.text = "Int:\(intNumber)\nDouble:\(doubleNumber)"
        button.setTitle(title, for: .normal)
    }
}

