//
//  ViewController.swift
//  dicePrac
//
//  Created by Anuj Bajaj on 14/06/18.
//  Copyright © 2018 LearningSystems. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var diceIndexView1 : Int = 0
    var diceIndexView2 : Int = 0
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceImage()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        updateDiceImage()
        
    }
    
    func updateDiceImage(){
        
        diceIndexView1 = Int(arc4random_uniform(6))
        diceIndexView2 = Int(arc4random_uniform(6))
        
        print(diceIndexView1)
        print(diceIndexView2)
        
        diceImageView1.image = UIImage(named : diceArray[diceIndexView1])
        diceImageView2.image = UIImage(named : diceArray[diceIndexView2])

    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImage()
    }
}

