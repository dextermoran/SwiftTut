//
//  ViewController.swift
//  Dice
//
//  Created by Dexter Moran on 8/9/17.
//  Copyright © 2017 Dexter Moran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndexL : Int = 0
    var randomDiceIndexR : Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImageViewL: UIImageView!
    @IBOutlet weak var diceImageViewR: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func rollButtonPress(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages() {
        randomDiceIndexL = Int(arc4random_uniform(6))
        randomDiceIndexR = Int(arc4random_uniform(6))
        
        diceImageViewL.image = UIImage(named : diceArray[randomDiceIndexL])
        diceImageViewR.image = UIImage(named : diceArray[randomDiceIndexR])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }

}

