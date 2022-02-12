//
//  ViewController.swift
//  Constrains
//
//  Created by Dannek on 11.02.2022.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var nextColorButton: UIButton!
    
    var currentLight = CurrentLight.red
    let lightIsOn: CGFloat = 1
    let lightIsOff: CGFloat = 0.4

    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.alpha = lightIsOff
        yellowView.alpha = lightIsOff
        greenView.alpha = lightIsOff
        
        redView.layer.cornerRadius = 50
        yellowView.layer.cornerRadius = 50
        greenView.layer.cornerRadius = 50
        
        nextColorButton.layer.cornerRadius = 15
    }
    
    
    @IBAction func nextColorButtonPressed() {
        switch CurrentLight.self {
        case .red:
            greenView.alpha = lightIsOff
            redView.alpha = lightIsOn
            currentLight = .yellow
        case .yellow:
            redView.alpha = lightIsOff
            yellowView.alpha = lightIsOn
            currentLight = .green
        case .green:
            greenView.alpha = lightIsOn
            yellowView.alpha = lightIsOff
            currentLight = .red
        }
    }
    
}
