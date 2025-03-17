//
//  TriviaViewController.swift
//  Trivia
//
//  Created by Wen-Chung Cheng on 3/13/25.
//

import UIKit

class TriviaViewController: UIViewController {
    
    
    @IBOutlet weak var questionCounterLabel: UILabel!
    
    @IBOutlet weak var questionTypeLabel: UILabel!
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var answerOneLabel: UIButton!
    @IBOutlet weak var answerTwoLabel: UIButton!
    @IBOutlet weak var answerThreeLabel: UIButton!
    @IBOutlet weak var answerFourLabel: UIButton!
    
    
    let questions: [TriviaQuestion] = [
        TriviaQuestion(
            question: "Who sang the title song for the latest Bond film, No Time to Die?",
            questiontype: "Music",
            possibleAnswers: ["Adele", "Sam Smith", "Billie Eilish", "Celine Dion"],
            correctAnswer: "Billie Eilish"
        ),
        TriviaQuestion(
            question: "Which flies a green, white, and orange (in that order) tricolor flag?",
            questiontype: "Geography",
            possibleAnswers: ["Ireland", "Ivory Coast", "Italy", "France"],
            correctAnswer: "Ireland"
        ),
        TriviaQuestion(
            question: "What company makes the Xperia model of smartphone?",
            questiontype: "Tech",
            possibleAnswers: ["Samsung", "Sony", "Nokia", "Motorola"],
            correctAnswer: "Sony"
        ),
        TriviaQuestion(
            question: "What number was the Apollo mission that successfully put a man on the moon for the first time in human history?",
            questiontype: "History",
            possibleAnswers: ["Apollo 11", "Apollo 12", "Apollo 14", "Apollo 13"],
            correctAnswer: "Apollo 11"
        ),
        TriviaQuestion(
            question: "How long did dinosaurs live on the earth?",
            questiontype: "Science",
            possibleAnswers: ["50-100 million years", "100-150 million years", "150-200 million years", "200+ million years"],
            correctAnswer: "150-200 million years"
        )
    ]
    
    
    @IBAction func didTapAnswerOne(_ sender: UIButton) {
        
//        selectedQuestionIndex = min(questions.count - 1, selectedQuestionIndex + 1)
        // go to next q if right
        if isCorrect(question: questions[selectedQuestionIndex], option: 0) {
            selectedQuestionIndex = min(questions.count - 1, selectedQuestionIndex + 1)
            
            configure(with: questions[selectedQuestionIndex])
            
        } else {
            
        }
//        configure(with: questions[selectedQuestionIndex])
//        configure(with: questions[selectedQuestionIndex])
        
    }
    
    @IBAction func didTapAnswerTwo(_ sender: UIButton) {
        
//        selectedQuestionIndex = min(questions.count - 1, selectedQuestionIndex + 1)
        // go to next q if right
        if isCorrect(question: questions[selectedQuestionIndex], option: 1) {
            selectedQuestionIndex = min(questions.count - 1, selectedQuestionIndex + 1)
            
            configure(with: questions[selectedQuestionIndex])
            
        } else {
            
        }
//        configure(with: questions[selectedQuestionIndex])
        
    }
    
    @IBAction func didTapAnswerThree(_ sender: UIButton) {
        
//        selectedQuestionIndex = min(questions.count - 1, selectedQuestionIndex + 1)
        // go to next q if right
        if isCorrect(question: questions[selectedQuestionIndex], option: 2) {
            selectedQuestionIndex = min(questions.count - 1, selectedQuestionIndex + 1)
            
            configure(with: questions[selectedQuestionIndex])
            
        } else {
            
        }
//        configure(with: questions[selectedQuestionIndex])
        
    }
    
    @IBAction func didTapAnswerFour(_ sender: UIButton) {
        
//        selectedQuestionIndex = min(questions.count - 1, selectedQuestionIndex + 1)
        // go to next q if right
        if isCorrect(question: questions[selectedQuestionIndex], option: 3) {
            selectedQuestionIndex = min(questions.count - 1, selectedQuestionIndex + 1)
            
            configure(with: questions[selectedQuestionIndex])
            
        } else {
            
        }
//        configure(with: questions[selectedQuestionIndex])
        
    }
    
//    private var questions = [TriviaQuestion]()
    private var selectedQuestionIndex = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Make sure the order of your parameters matches the order of your struct. The compiler will help you out here!
//        questions = createQuestions()
        configure(with: questions[selectedQuestionIndex])
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
//    private func createQuestions() -> [TriviaQuestion] {
//        
//        let question1 = TriviaQuestion(
//            question: "Who sang the title song for the latest Bond film, No Time to Die?",
//            questiontype: "Music",
//            possibleAnswers: ["Adele", "Sam Smith", "Billie Eilish", "Celine Dion"],
//            correctAnswer: "Billie Eilish"
//        )
//        let question2 = TriviaQuestion(
//            question: "Which flies a green, white, and orange (in that order) tricolor flag?",
//            questiontype: "Geography",
//            possibleAnswers: ["Ireland", "Ivory Coast", "Italy", "France"],
//            correctAnswer: "Ireland"
//        )
//        let question3 = TriviaQuestion(
//            question: "What company makes the Xperia model of smartphone?",
//            questiontype: "Tech",
//            possibleAnswers: ["Samsung", "Sony", "Nokia", "Motorola"],
//            correctAnswer: "Sony"
//        )
//        let question4 = TriviaQuestion(
//            question: "What number was the Apollo mission that successfully put a man on the moon for the first time in human history?",
//            questiontype: "History",
//            possibleAnswers: ["Apollo 11", "Apollo 12", "Apollo 14", "Apollo 13"],
//            correctAnswer: "Apollo 11"
//        )
//        let question5 = TriviaQuestion(
//            question: "How long did dinosaurs live on the earth?",
//            questiontype: "Science",
//            possibleAnswers: ["50-100 million years", "100-150 million years", "150-200 million years", "200+ million years"],
//            correctAnswer: "150-200 million years"
//        )
//        
//        return [question1, question2, question3, question4, question5]
//        
//    }
    
    // Method to check if an answer is correct
    private func isCorrect(question: TriviaQuestion, option: Int) -> Bool {
        return question.possibleAnswers[option] == question.correctAnswer
    }
    
    
//    private func createQuestions() -> [TriviaQuestion] {
//        
//        let question1 = TriviaQuestion(questiontype: .Geography)
//        let question2 = TriviaQuestion(questiontype: .History)
//        let question3 = TriviaQuestion(questiontype: .Music)
//        let question4 = TriviaQuestion(questiontype: .Science)
//        let question5 = TriviaQuestion(questiontype: .Tech)
//        
//        return [question1, question2, question3, question4, question5]
//        
//    }
    
    
    private func configure(with question: TriviaQuestion) {
//        forecastImageView.image = forecast.weatherCode.image
        questionCounterLabel.text = "Question: \(selectedQuestionIndex + 1)/\(questions.count)"
        questionTypeLabel.text = question.questiontype
        questionLabel.text = question.question
        answerOneLabel.titleLabel!.text = question.possibleAnswers[0]
        answerTwoLabel.titleLabel!.text = question.possibleAnswers[1]
        answerThreeLabel.titleLabel!.text = question.possibleAnswers[2]
        answerFourLabel.titleLabel!.text = question.possibleAnswers[3]
//        temperatureLabel.text = "\(forecast.temperature)°F"
      }

}
