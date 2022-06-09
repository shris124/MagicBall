//
//  ViewController.swift
//  MagicBall
//
//  Created by iguest on 6/8/22.
//

import UIKit

class ViewController: UIViewController {

    var answers: [String] = ["Yes", "No", "You should hire a lawyer", "The Rams", "Luck comes from hard work.", "Don't try to impress everyone.", "Don't make assumptions.", "Do what is right, not what is easy."]
    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        answerLabel.isHidden = true
        self.becomeFirstResponder() // To get shake gesture
    }

    // We are willing to become first responder to get shake motion
    override var canBecomeFirstResponder: Bool {
        get {
            return true
        }
    }

    // Enable detection of shake motion
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            self.answerLabel.fadeOut(completion: {
                (finished: Bool) -> Void in
                self.answerLabel.isHidden = false
                self.answerLabel.text = self.answers.randomElement()
                self.answerLabel.fadeIn()
            })
        }
    }

}

