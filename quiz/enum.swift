//
//  File.swift
//  quiz
//
//  Created by Faiaz Ibraev on 25/6/22.
//

import Foundation

enum quiz{
    case ques
    case ques2
    case ques3
    
    var quesTitle: String{
        switch self {
        case .ques:
            return "Месси лучший футболист?"
        case .ques2:
            return "Месси лучший футболист?2"
        case .ques3:
            return "Месси лучший футболист?3"
        }
    }
    
    var title: String{
        switch self {
        case .ques:
            return "Вопрос №1"
        case .ques2:
            return "Вопрос №2"
        case .ques3:
            return "Вопрос №3"
        }
    }
}


