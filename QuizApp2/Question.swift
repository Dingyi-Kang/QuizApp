//
//  Question.swift
//  QuizApp2
//
//  Created by OSU App Center on 6/2/21.
//

import Foundation

struct Question: Codable{
    
    var question:String?
    var answers:[String]?
    var correctAnserIndex:Int?
    var feedback:String?
    
}
