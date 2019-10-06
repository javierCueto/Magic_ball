//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by José Javier Cueto Mejía on 9/13/19.
//  Copyright © 2019 José Javier Cueto Mejía. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
     var randomBallNumber: Int = 0
    
    @IBAction func buttonPressed(_ sender: Any) {
        
        randomImage()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       randomImage()
        // Do any additional setup after loading the view.
    }
    
    func randomImage(){
        randomBallNumber = Int.random(in: 0 ... 4)
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        randomImage()
    }
}

