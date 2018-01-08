//
//  ViewController.swift
//  Diceez
//
//  Created by Kirill G on 1/7/18.
//  Copyright © 2018 Kirill. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var diceOne: UIImageView!
    @IBOutlet var diceTwo: UIImageView!
    
    var diceRollIndexOne: Int = 0
    var diceRollIndexTwo: Int = 0
    
    let diceImages = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImage()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func rollDice(_ sender: Any) {
        updateDiceImage()
    }
    
    func updateDiceImage() {
        diceRollIndexOne = Int(arc4random_uniform(6))
        diceRollIndexTwo = Int(arc4random_uniform(6))
        
        diceOne.image =  UIImage(named: diceImages[diceRollIndexOne])
        diceTwo.image =  UIImage(named: diceImages[diceRollIndexTwo])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImage()
    }
}

