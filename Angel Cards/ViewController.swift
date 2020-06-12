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
    
    var angelCard = #imageLiteral(resourceName: "12")
    
    let angelCardBackGround = #imageLiteral(resourceName: "angelcardback")
    
    // MARK: Actions
    // Displays back of card and changes the value of angelCard
    @IBAction func pickANewCard(_ sender: UIButton) {
        angelCardImage.image = angelCardBackGround
        angelCard = UIImage(named: "\(arc4random_uniform(19) + 1)")!
    }
    
    // Will flip from the back of the card to the front
    // Does not flip back right now
    @IBAction func flipCard(_ sender: UIButton) {
        angelCardImage.image = angelCard
    }
    


}

