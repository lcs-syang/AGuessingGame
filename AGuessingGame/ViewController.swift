//
//  ViewController.swift
//  AGuessingGame
//
//  Created by Yang, Selena on 2019/10/3.
//  Copyright © 2019 Yang Selena. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    // MARK: Properties
    let targetNumber = Int.random(in: 1...100)
    @IBOutlet weak var submittedGuess: UITextField!
    // MARK: Initializers
    
    // MARK: Methods (functions) - behaviours
    
    // Runs as soon as the view becomes visible to the user
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Make a object named 'synthesizer', which is an instance of the
        // class 'AVSpeechSynthesizer'
        let synthesizer = AVSpeechSynthesizer()
        
        // Make a string of what we want the computer to say
        let message = "I'm thinking of a number between 1 and 100. Guess what it is."
        
        // Make an object named 'utterance', which is an instance of the class
        // AVSpeechUtterance
        let utterance = AVSpeechUtterance(string: message)
        
        // Speak the message
        synthesizer.speak(utterance)
        
        //Re[prt the target number to the console for testing purposes
        print("For testing purposes, the random number is \(targetNumber)")
    }

    //will be use to check a guess
    @IBAction func checkGuess(_ sender: Any) {
        
        //obtain the guess value from the text field
        let guessText = submittedGuess.text!
        let guessNumber = Int(guessText)!
        
        //for testing purposes what was the guess?
        print("for testing purposes, the guess made was \(guessNumber) ")
        
        //Give appropriate feedback to the user
        if guessNumber > targetNumber{
            print("guess lower next time")
        } else if guessNumber < targetNumber{
            print("guess higher next time")
        } else {
            print("You are correct!")
        }
    }
    
}

