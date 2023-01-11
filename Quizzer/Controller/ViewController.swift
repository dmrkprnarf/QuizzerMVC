//
//  ViewController.swift
//  Quizzer
//
//  Created by Arif Demirkoparan on 11.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var choise1: UIButton!
    @IBOutlet weak var choise2: UIButton!
    @IBOutlet weak var choise3: UIButton!
    @IBOutlet weak var proggresBar: UIProgressView!
    
    var quizBrain = QuestionBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let controlAnswer = quizBrain.checkAnswer(userAnswer)
        quizBrain.checkAnswer()
        if controlAnswer {
            sender.backgroundColor = UIColor.green
            print("Right!")
        }else {
            sender.backgroundColor = UIColor.red
            print("Wrong!")
        }
        
        Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
       
    
    @objc func updateUI(){
        questionLabel.text = quizBrain.getQuestion()
        scoreLabel.text = "Score:\(quizBrain.getScore())"
        choise1.backgroundColor = UIColor.clear
        choise2.backgroundColor = UIColor.clear
        choise3.backgroundColor = UIColor.clear
        choise1.setTitle(quizBrain.getAnswer()[0], for: .normal)
        choise2.setTitle(quizBrain.getAnswer()[1], for: .normal)
        choise3.setTitle(quizBrain.getAnswer()[2], for: .normal)
        proggresBar.progress = quizBrain.getProgressBar()
    }
    
}

