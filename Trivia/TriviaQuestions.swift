//
//  TriviaQuestions.swift
//  Trivia
//
//  Created by Wen-Chung Cheng on 3/13/25.
//

import Foundation

import UIKit



struct TriviaQuestions {
//  let temperature: Double
//  let date: Date
  let questiontype: QuestionType
//  let answerstype: AnswersType
}

enum QuestionType {
  case Music
  case Geography
  case Tech
  case History
  case Science

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

//  var image: UIImage? {
//    switch self {
//    case .clearSky, .mainlyClear:
//      return UIImage(named: "sun")
//    case .partlyCloudy:
//      return UIImage(named: "cloud-sun")
//    case .overcast:
//      return UIImage(named: "cloud")
//    case .fog:
//      return UIImage(named: "fog")
//    case .lightDrizzle, .moderateDrizzle, .denseDrizzle:
//      return UIImage(named: "drizzle")
//    case .slightRainShowers, .moderateRainShowers, .violentRainShowers:
//      return UIImage(named: "cloud-drizzle")
//    }
//  }
}
