//
//  QuestionBank.swift
//  Quizzler
//
//  Created by Nathaniel Idahosa on 15.07.18.
//  Copyright © 2018 Appostlisch. All rights reserved.
//

import Foundation


class QuestionBank {
    // This class hold all questions. The questions are added to the array as soon as an object of the class is created.
    
    // You can use the shuffled array (shuffledArrayOfQuestions) or the static array (arrayOfQuestions).
    var arrayOfQuestions = [Question]()
    var shuffledArrayOfQuestions = [Question]()
    
    init() {
        
        // Creating a quiz item and appending it to the list
        let item = Question(questionText: "Valentine\'s day is banned in Saudi Arabia.", correctAnswer: true)
        
        // Add the Question to the list of questions
        arrayOfQuestions.append(item)
        
        // skipping one step and just creating the quiz item inside the append function
        arrayOfQuestions.append(Question(questionText: "A slug\'s blood is green.", correctAnswer: true))
        
        arrayOfQuestions.append(Question(questionText: "Approximately one quarter of human bones are in the feet.", correctAnswer: true))
        
        arrayOfQuestions.append(Question(questionText: "The total surface area of two human lungs is approximately 70 square metres.", correctAnswer: true))
        
        arrayOfQuestions.append(Question(questionText: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", correctAnswer: true))
        
        arrayOfQuestions.append(Question(questionText: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", correctAnswer: false))
        
        arrayOfQuestions.append(Question(questionText: "It is illegal to pee in the Ocean in Portugal.", correctAnswer: true))
        
        arrayOfQuestions.append(Question(questionText: "You can lead a cow down stairs but not up stairs.", correctAnswer: false))
        
        arrayOfQuestions.append(Question(questionText: "Google was originally called \"Backrub\".", correctAnswer: true))
        
        arrayOfQuestions.append(Question(questionText: "Buzz Aldrin\'s mother\'s maiden name was \"Moon\".", correctAnswer: true))
        
        arrayOfQuestions.append(Question(questionText: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", correctAnswer: false))
        
        arrayOfQuestions.append(Question(questionText: "No piece of square dry paper can be folded in half more than 7 times.", correctAnswer: false))
        
        arrayOfQuestions.append(Question(questionText: "Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.", correctAnswer: true))
        
        
        // A loop that shuffles the questions into the shuffledArrayOfQuestions.
        // After the arrayOfQuestions has been filled with all questions, this loop iterates through the arrayOfQuestions and adds the questions from arrayOfQuestions into the shuffledArrayOfQuestions in a shuffled fashion :)
        
        for _ in 0..<arrayOfQuestions.count
        {
            let rand = Int(arc4random_uniform(UInt32(arrayOfQuestions.count)))
            
            shuffledArrayOfQuestions.append(arrayOfQuestions[rand])
            
            arrayOfQuestions.remove(at: rand)
        }
    }
    

    
}
