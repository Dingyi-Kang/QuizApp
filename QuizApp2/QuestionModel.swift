//
//  QuestionModel.swift
//  QuizApp2
//
//  Created by OSU App Center on 6/2/21.
//

import Foundation


protocol QuestionModelDelegateProtocol {
    func retrieve()
}


class questionModel {
    
    var questions:[Question]?
    var delegate:QuestionModelDelegateProtocol?
    
    
    func getLocalData () {
        
        
        if let path = Bundle.main.path(forResource: "QuestionData", ofType: "json"){
        
        let url = URL(fileURLWithPath: path)
        
            do {
            
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                
                questions = try decoder.decode([Question].self, from: data)
                
                self.delegate?.retrieve()
                
            }
            catch{
                print("couldn't load json")
            }
            
        }
        
    }
    
}
