//
//  ViewController.swift
//  Tapper
//
//  Created by Shivam Sharma on 5/11/17.
//  Copyright © 2017 ShivamSharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Properties
    var requiredNumberOfTaps = 0
    var currentTapCount = 0
    
    // Outlets
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var tapsTextField: UITextField!
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var tapsLabel: UILabel!
    
    @IBAction func onPlayButtonPressed(_ sender: UIButton!) {
        if (tapsTextField.hasText) {
            logoImage.isHidden = true
            tapsTextField.isHidden = true
            playButton.isHidden = true
            
            tapButton.isHidden = false
            tapsLabel.isHidden = false
            
            requiredNumberOfTaps = Int(tapsTextField.text!)!
            tapsTextField.resignFirstResponder()
        }
        
    }
    
    @IBAction func onTapButtonPressed(_ sender: UIButton!) {
        currentTapCount += 1
        tapsLabel.text = String(currentTapCount) + " Taps"
        
        if isGameOver() {
            restartGame()
        }
    }
    
    func restartGame() {
        logoImage.isHidden = false
        tapsTextField.isHidden = false
        playButton.isHidden = false
        
        tapButton.isHidden = true
        tapsLabel.isHidden = true
        
        tapsLabel.text = "0 Taps"
        
        requiredNumberOfTaps = 0
        currentTapCount = 0
    }
    
    func isGameOver() -> Bool {
        if currentTapCount == requiredNumberOfTaps {
            return true
        } else {
            return false
        }
    }
}

