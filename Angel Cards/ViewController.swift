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
        angelCardImage.image = angelCardBackGround
        flipped = false
        angelCard = UIImage(named: "\(arc4random_uniform(19) + 1)")!
    }
    
    // Will flip from the back of the card to the front
    // Does not flip back right now
    @IBAction func flipCard(_ sender: UIButton) {
        if !flipped {
            angelCardImage.image = angelCard
            flipped = true
            playSound(soundName: "harp")
        } else {
            angelCardImage.image = angelCardBackGround
            flipped = false
            playSound(soundName: "flipCard")
        }
        
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }

}

