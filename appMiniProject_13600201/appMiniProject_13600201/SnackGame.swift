//
//  SnackGame.swift
//  appMiniProject_13600201
//
//  Created by ict on 16/11/2561 BE.
//  Copyright © 2561 ictnaja. All rights reserved.
//

import Foundation
import UIKit

class SnackGame: UIViewController {
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var flagView: UIImageView!
    @IBOutlet weak var optionA: UIButton!
    @IBOutlet weak var optionB: UIButton!
    
    @IBOutlet weak var showTime: UILabel!
    var timer = Timer()
    var timeCount = 120
    
    
    let allQuestions = QuestionBank()
    var questionNumber: Int = 0
    var selectedAnswer: Int = 0
    var score: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(SnackGame.processTimer),userInfo: nil, repeats: true)
    }
    @objc func processTimer(){
        if timeCount > 0 {
            timeCount -= 1
            showTime.text = String(timeCount)
        }else{
            timer.invalidate()
            timeCount=0
            showTime.text = String(timeCount)
            
        }
        showTime.text = String(timeCount)
    }
    
    
    @IBAction func answerPressed(_ sender: UIButton) {
        if sender.tag == selectedAnswer {
            print("correct")
            score += 1
            ProgressHUD.showSuccess("Correct")
            
        }else{
            print("wrong")
            ProgressHUD.showError("Incorrect")
        }
        questionNumber += 1
        updateQuestion()
    
    }
    func updateQuestion() {
        if questionNumber < allQuestions.list.count{
        flagView.image = UIImage(named:(allQuestions.list[questionNumber].questionImage))
        questionLabel.text = allQuestions.list[questionNumber].question
        optionA.setTitle(allQuestions.list[questionNumber].optionA, for: UIControl.State.normal)
        optionB.setTitle(allQuestions.list[questionNumber].optionB, for: UIControl.State.normal)
        selectedAnswer = allQuestions.list[questionNumber].correctAnswer
        }else{
            
           let alert = UIAlertController(title: "EXCELLENT!", message: "คุณทำได้ \(score) คะแนน", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Replay", style: .default, handler: {action in self.restartQuiz()}))
            alert.addAction(UIAlertAction(title: "End", style: .cancel, handler: nil))
            self.present(alert, animated: true)
//            let restartAction = UIAlertAction(title: "TRY AGAIN", style: .default, handler: {action in self.restartQuiz()})
//            alert .addAction(restartAction)
//            present(alert, animated: true, completion: nil)
            
        }
        

    }
    func restartQuiz(){
        score = 0
        questionNumber = 0
        updateQuestion()
    
    }
    @IBAction func endGameButtom(_ sender: Any) {
    }
    
        }



  

    
        





