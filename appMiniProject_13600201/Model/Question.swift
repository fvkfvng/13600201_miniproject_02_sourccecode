//
//  Question.swift
//  appMiniProject_13600201
//
//  Created by ict on 16/11/2561 BE.
//  Copyright © 2561 ictnaja. All rights reserved.
//

import Foundation

class Question {
    
    let questionImage: String
    let question:String
    let optionA:String
    let optionB:String
    let correctAnswer:Int
    
    init(image:String, questionText: String, choiceA: String,choiceB: String, answer: Int) {
        questionImage = image
        question = questionText
        optionA = choiceA
        optionB = choiceB
        correctAnswer = answer
    
    
    
//    let answer : Bool
//    let questionText : String
//
//    init(text : String, CorrectAnswer : Bool){
//        questionText = text
//        answer = CorrectAnswer
    }


}
