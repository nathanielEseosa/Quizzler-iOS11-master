import Foundation


class Question {
    
    let questionText: String
    let correctAnswer: Bool
    
    init(questionText: String, correctAnswer: Bool) {
        self.questionText = questionText
        self.correctAnswer = correctAnswer
    }
}
