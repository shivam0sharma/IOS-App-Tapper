//
//  ViewController.swift
//  Tapper
//
//  Created by Shivam Sharma on 5/11/17.
//  Copyright © 2017 ShivamSharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var tapsTextField: UITextField!
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var tapButton: UIButton!
    @IBOutlet weak var tapsLabel: UILabel!
    
    var numberOfTaps = 0
    
    @IBAction func onPlayButtonPressed(_ sender: UIButton!) {
        if (tapsTextField.hasText) {
            logoImage.isHidden = true
            tapsTextField.isHidden = true
            playButton.isHidden = true
            
            tapButton.isHidden = false
            tapsLabel.isHidden = false
            
            numberOfTaps = Int(tapsTextField.text!)!
            tapsLabel.text = String(numberOfTaps) + " Taps"
            tapsTextField.resignFirstResponder()
        }
        
    }
    
    @IBAction func onTapButtonPressed(_ sender: UIButton!) {
        if !isGameOver() {
            numberOfTaps -= 1
            tapsLabel.text = String(numberOfTaps) + " Taps"
        } else {
            restartGame()
        }
    }
    
    func restartGame() {
        logoImage.isHidden = false
        tapsTextField.isHidden = false
        playButton.isHidden = false
        
        tapButton.isHidden = true
        tapsLabel.isHidden = true
    }
    
    func isGameOver() -> Bool {
        if numberOfTaps <= 0 {
            return true
        } else {
            return false
        }
    }
}

