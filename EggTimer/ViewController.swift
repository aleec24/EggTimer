//
//  ViewController.swift
//  EggTimer
//
//  Created by Alexa Cabalceta on 27/1/23.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTimes = ["Soft": 5, "Medium": 7, "Hard": 12]
    
    @IBAction func hardnessSelectors(_ sender: UIButton) {
        
        let hardness = sender.currentTitle!
        
        print("Cooking time is \(eggTimes[hardness]!) minutes")
        }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

