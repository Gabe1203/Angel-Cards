//
//  ViewController.swift
//  Angel Cards
//
//  Created by Gabriel  Valladares on 6/3/20.
//  Copyright © 2020 Gabriel  Valladares. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var angelCardImage: UIImageView!
    
    var angelCard = #imageLiteral(resourceName: "12")
    
    var player: AVAudioPlayer!
    
    // Variable to keep track of whether the card is flipped
    var flipped = false
    
    let angelCardBackGround = #imageLiteral(resourceName: "angelcardback")
    
    // MARK: Actions
    // Displays back of card and changes the value of angelCard
    @IBAction func pickANewCard(_ sender: UIButton) {
        playSound(soundName: "mystery")
        reduceOpacity(sender: sender)
        angelCardImage.image = angelCardBackGround
        flipped = false
        angelCard = UIImage(named: "\(arc4random_uniform(19) + 1)")!
    }
    
    // Will flip from the back of the card to the front
    // Does not flip back right now
    @IBAction func flipCard(_ sender: UIButton) {
        var newImage: UIImage
        var soundName: String
        if !flipped {
            newImage = angelCard
            soundName = "harp"
            flipped = true
            
        } else {
            newImage = angelCardBackGround
            soundName = "flipCard"
            flipped = false
        }
        playSound(soundName: soundName)
        reduceOpacity(sender: sender)
        angelCardImage.image = newImage
        
    }
    
    func reduceOpacity(sender: UIButton){
        //Reduces the sender's (the button that got pressed) opacity to half.
        sender.alpha = 0.5

        //Code should execute after 0.2 second delay.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            //Bring's sender's opacity back up to fully opaque.
            sender.alpha = 1.0
        }
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }

}

