//
//  ViewController.swift
//  tapper
//
//  Created by Larisa Barbu on 21/02/2016.
//  Copyright © 2016 Larisa Barbu. All rights reserved.
//

import UIKit

    class ViewController: UIViewController {
        
        //Properties
        var maxTaps = 0
        var currentTaps = 0
        
        //Outlets
        
        @IBOutlet weak var logoImg: UIImageView!
        @IBOutlet weak var playBtn: UIButton!
        @IBOutlet weak var textHowManyTaps: UITextField!
        
        @IBOutlet weak var coinBtn: UIButton!
        @IBOutlet weak var TapsLabel100: UILabel!
        
        
        @IBAction func onCoinTapped(sender: UIButton!) {
            currentTaps++
            
            updateTapsLbl()
            
            if isGameOver() {
                restartGame()
            }
        }
        
        @IBAction func onPlayBtnPressed(sender: UIButton!) {
            
            if textHowManyTaps.text != nil && textHowManyTaps.text != "" {
                
                logoImg.hidden = true
                playBtn.hidden = true
                textHowManyTaps.hidden = true
                
                coinBtn.hidden = false
                TapsLabel100.hidden = false

            
                // transforms .text to .Int
                maxTaps = Int(textHowManyTaps.text!)!
                currentTaps = 0
                
                updateTapsLbl()
            }
        }
        //Restarts Game
        func restartGame() {
            maxTaps = 0
            textHowManyTaps.text = ""
            
            logoImg.hidden = false
            playBtn.hidden = false
            textHowManyTaps.hidden = false
            
            coinBtn.hidden = true
            TapsLabel100.hidden = true
        }
        
        //When the taps reach the maximum number, the game restarts.
        func isGameOver() -> Bool {
            if currentTaps >= maxTaps {
                return true
            } else {
                return false
            }
        }
        
        func updateTapsLbl() {
            TapsLabel100.text = "\(currentTaps) Taps"
        }

}

