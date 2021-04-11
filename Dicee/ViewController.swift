//
//  ViewController.swift
//  Dicee
//
//  Created by 🐔同学 on 2021/04/10.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArr = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var index1: Int = 0;
    var index2: Int = 0;
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    @IBAction func rollBtn(_ sender: Any) {
        updateDiceImage()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImage()
    }
    
    func updateDiceImage() {
        //        index1 = Int.random(in: 1...6)
        //        index2 = Int.random(in: 1...6)
        index1 = Int.random(in: 0...5)
        index2 = Int.random(in: 0...5)
        
        //        diceImageView1.image = UIImage(named: "dice\(index1)")
        //        diceImageView2.image = UIImage(named: "dice\(index2)")
        
        diceImageView1.image = UIImage(named: diceArr[index1])
        diceImageView2.image = UIImage(named: diceArr[index2])
    }
}
