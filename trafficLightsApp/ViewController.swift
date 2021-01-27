//
//  ViewController.swift
//  trafficLightsApp
//
//  Created by Вадим on 26.01.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redColorView: UIView!
    @IBOutlet weak var yellowColorView: UIView!
    @IBOutlet weak var greenColorView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redColorView.layer.cornerRadius =
            redColorView.frame.size.width / 2
        yellowColorView.layer.cornerRadius =
            yellowColorView.frame.width / 2
        greenColorView.layer.cornerRadius =
            greenColorView.frame.width / 2
        
        redColorView.alpha = 0.3
        yellowColorView.alpha = 0.3
        greenColorView.alpha = 0.3
        startButton.layer.cornerRadius = 10
    }
    
    @IBAction func startButtonPressed() {
        
        if redColorView.alpha != 1 &&
            yellowColorView.alpha != 1 &&
            greenColorView.alpha != 1 {
            redColorView.alpha = 1
            startButton.setTitle("NEXT", for: .normal)
            
        } else if redColorView.alpha == 1 &&
                    yellowColorView.alpha != 1 &&
                    greenColorView.alpha != 1 {
            yellowColorView.alpha = 1
            redColorView.alpha = 0.3
            
        } else if yellowColorView.alpha == 1 &&
                    greenColorView.alpha != 1 &&
                    redColorView.alpha != 1 {
            greenColorView.alpha = 1
            yellowColorView.alpha = 0.3
            
        } else if greenColorView.alpha == 1 &&
                    redColorView.alpha != 1 &&
                    yellowColorView.alpha != 1 {
            redColorView.alpha = 1
            greenColorView.alpha = 0.3
        }
    }
}



