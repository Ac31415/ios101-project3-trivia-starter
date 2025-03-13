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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Make sure the order of your parameters matches the order of your struct. The compiler will help you out here!
        let currentQuestion = TriviaQuestions(questiontype: .Music)
        configure(with: currentQuestion)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    private func configure(with question: TriviaQuestions) {
//        forecastImageView.image = forecast.weatherCode.image
        questionLabel.text = question.questiontype.question
//        temperatureLabel.text = "\(forecast.temperature)°F"
      }

}
