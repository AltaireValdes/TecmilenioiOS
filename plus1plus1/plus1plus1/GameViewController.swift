//
//  ViewController.swift
//  plus1plus1
//
//  Created by Altaire Valdes on 19/03/20.
//  Copyright © 2020 Altaire Valdes. All rights reserved.
//

import UIKit

class GameViewController: UIViewController
{
    @IBOutlet weak var scoreLabel:UILabel?
    @IBOutlet weak var timeLabel:UILabel?
    @IBOutlet weak var numberLabel:UILabel?
    @IBOutlet weak var inputField:UITextField?
    
    var score = 0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        updateScoreLabel()
        updateNumberLabel()
    }
    
    func updateScoreLabel() {
        scoreLabel?.text = String(score)
    }
    
    func updateNumberLabel() {
        numberLabel?.text = String.randomNumber(length: 4)
    }
    
    @IBAction func inputFieldDidChange()
    {
        guard let numberText = numberLabel?.text, let inputText = inputField?.text else {
            return
        }
        
        guard inputText.count == 4 else {
            return
        }
        
        var isCorrect = true
        
        for n in 0..<4{
            var input = inputText.integer(at: n)
            let number = numberText.integer(at: n)
            
            if input == 0 {
                input = 0
            }
            
            if input != number + 1 {
                isCorrect = false
                break
            }
        }
        
        if isCorrect {
            score += 1
        } else {
            score -= 1
        }
        
        updateNumberLabel()
        updateScoreLabel()
        inputField?.text = ""
        
        inputField?.addTarget(self, action: #selector(inputFieldDidChange), for: .editingChanged)
    }
}

