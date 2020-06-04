//
//  ViewController.swift
//  Angel Cards
//
//  Created by Gabriel  Valladares on 6/3/20.
//  Copyright © 2020 Gabriel  Valladares. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var angelCardImage: UIImageView!
    
    var angelCard = #imageLiteral(resourceName: "make a wish")
    
    let angelCardList = [ #imageLiteral(resourceName: "Ask for a sign (1)"), #imageLiteral(resourceName: "Love and Gratitude"), #imageLiteral(resourceName: "Flow with it"), #imageLiteral(resourceName: "youre not alone image"), #imageLiteral(resourceName: "Precious Time"), #imageLiteral(resourceName: "Awakening"), #imageLiteral(resourceName: "pause and reflect"), #imageLiteral(resourceName: "Lean on Me (1)"), #imageLiteral(resourceName: "Let Your Creativity Flow"), #imageLiteral(resourceName: "Believe in Miracles"), #imageLiteral(resourceName: "make a wish"), #imageLiteral(resourceName: "Let love in"), #imageLiteral(resourceName: "you_ve got this"), #imageLiteral(resourceName: "Healing"), #imageLiteral(resourceName: "spread your wings"), #imageLiteral(resourceName: "sootheyoursoul"), #imageLiteral(resourceName: "Sensitive Soul"), #imageLiteral(resourceName: "Angels of Peace"), #imageLiteral(resourceName: "Embrace the new") ]
    
    let angelCardBackGround = #imageLiteral(resourceName: "angelcardback")
    
    // MARK: Actions
    // Displays back of card and changes the value of angelCard
    @IBAction func pickANewCard(_ sender: UIButton) {
        angelCardImage.image = angelCardBackGround
        angelCard = angelCardList.randomElement()!
    }
    
    // Will flip from the back of the card to the front
    // Does not flip back right now
    @IBAction func flipCard(_ sender: UIButton) {
        angelCardImage.image = angelCard
    }
    


}

