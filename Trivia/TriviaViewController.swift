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
    
    @IBAction func didTapAnswerOne(_ sender: UIButton) {
        
        selectedQuestionIndex = min(questions.count - 1, selectedQuestionIndex + 1)
        configure(with: questions[selectedQuestionIndex])
        configure(with: questions[selectedQuestionIndex])
        
    }
    
    @IBAction func didTapAnswerTwo(_ sender: UIButton) {
        
        selectedQuestionIndex = min(questions.count - 1, selectedQuestionIndex + 1)
        configure(with: questions[selectedQuestionIndex])
        
    }
    
    @IBAction func didTapAnswerThree(_ sender: UIButton) {
        
        selectedQuestionIndex = min(questions.count - 1, selectedQuestionIndex + 1)
        configure(with: questions[selectedQuestionIndex])
        
    }
    
    @IBAction func didTapAnswerFour(_ sender: UIButton) {
        
        selectedQuestionIndex = min(questions.count - 1, selectedQuestionIndex + 1)
        configure(with: questions[selectedQuestionIndex])
        
    }
    
    private var questions = [TriviaQuestion]()
    private var selectedQuestionIndex = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Make sure the order of your parameters matches the order of your struct. The compiler will help you out here!
        questions = createQuestions()
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
    
    
    private func createQuestions() -> [TriviaQuestion] {
        
        let question1 = TriviaQuestion(questiontype: .Geography)
        let question2 = TriviaQuestion(questiontype: .History)
        let question3 = TriviaQuestion(questiontype: .Music)
        let question4 = TriviaQuestion(questiontype: .Science)
        let question5 = TriviaQuestion(questiontype: .Tech)
        
        return [question1, question2, question3, question4, question5]
        
    }
    
    
    private func configure(with question: TriviaQuestion) {
//        forecastImageView.image = forecast.weatherCode.image
        questionCounterLabel.text = "Question: \(selectedQuestionIndex + 1)/\(questions.count)"
        questionTypeLabel.text = question.questiontype.questiontype
        questionLabel.text = question.questiontype.question
        answerOneLabel.titleLabel?.text = question.questiontype.answerone
        answerTwoLabel.titleLabel?.text = question.questiontype.answertwo
        answerThreeLabel.titleLabel?.text = question.questiontype.answerthree
        answerFourLabel.titleLabel?.text = question.questiontype.answerfour
//        temperatureLabel.text = "\(forecast.temperature)°F"
      }

}
