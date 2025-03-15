//
//  TriviaQuestions.swift
//  Trivia
//
//  Created by Wen-Chung Cheng on 3/13/25.
//

import Foundation

import UIKit



struct TriviaQuestion {
//  let temperature: Double
//  let date: Date
    let questiontype: QuestionType
    
//    let numberOfQuestions = QuestionType.allCases.count
    
//  let answerstype: AnswersType
}

enum QuestionType{
    case Music
    case Geography
    case Tech
    case History
    case Science
    
    var questiontype: String {
      switch self {
      case .Music:
        return "Music"
      case .Geography:
        return "Geography"
      case .Tech:
        return "Technology"
      case .History:
        return "History"
      case .Science:
        return "Science"
      }
    }
    
    var question: String {
      switch self {
      case .Music:
        return "Who sang the title song for the latest Bond film, No Time to Die?"
      case .Geography:
        return "Which flies a green, white, and orange (in that order) tricolor flag?"
      case .Tech:
        return "What company makes the Xperia model of smartphone?"
      case .History:
        return "What number was the Apollo mission that successfully put a man on the moon for the first time in human history?"
      case .Science:
        return "How long did dinosaurs live on the earth?"
      }
    }
    
    var correctanswer: String {
      switch self {
      case .Music:
          return "Billie Eilish"
      case .Geography:
        return "Ireland"
      case .Tech:
        return "Sony"
      case .History:
        return "Apollo 11"
      case .Science:
        return "150-200 million years"
      }
    }
    
    var answerone: String {
      switch self {
      case .Music:
          return "Adele"
      case .Geography:
        return "Ireland"
      case .Tech:
        return "Samsung"
      case .History:
        return "Apollo 11"
      case .Science:
        return "50-100 million years"
      }
    }
    
    var answertwo: String {
      switch self {
      case .Music:
          return "Sam Smith"
      case .Geography:
        return "Ivory Coast"
      case .Tech:
        return "Sony"
      case .History:
        return "Apollo 12"
      case .Science:
        return "100-150 million years"
      }
    }
    
    var answerthree: String {
      switch self {
      case .Music:
          return "Billie Eilish"
      case .Geography:
        return "Italy"
      case .Tech:
        return "Nokia"
      case .History:
        return "Apollo 14"
      case .Science:
        return "150-200 million years"
      }
    }
    
    var answerfour: String {
      switch self {
      case .Music:
          return "Celine Dion"
      case .Geography:
        return "France"
      case .Tech:
        return "Motorola"
      case .History:
        return "Apollo 13"
      case .Science:
        return "200+ million years"
      }
    }
}
