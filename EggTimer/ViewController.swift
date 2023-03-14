//
//  ViewController.swift
//  EggTimer
//
//  Created by Alexa Cabalceta on 27/1/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var titleLabel: UILabel!
    var secondsRemaining = 60
    var eggCountdown = 0
    var timer = Timer()
    let eggTimes = ["Soft": 5, "Medium": 7, "Hard": 12]
    
    @IBAction func hardnessSelectors(_ sender: UIButton) {
        
        timer.invalidate()
        
        let hardness = sender.currentTitle!
        let result = eggTimes[hardness]!
        eggCountdown = result * secondsRemaining
        
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
            if self.eggCountdown > 0 {
                print ("\(self.eggCountdown) seconds.")
                self.eggCountdown -= 1
            } else {
                Timer.invalidate()
                self.titleLabel.text = "DONE!"
            }
        }
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

