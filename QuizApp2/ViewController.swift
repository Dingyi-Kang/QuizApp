//
//  ViewController.swift
//  QuizApp2
//
//  Created by OSU App Center on 6/2/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, QuestionModelDelegateProtocol{
    
    
    
    let model = questionModel()
    var questions:[Question]?
    var currentQuestionIndex = 0
    var numOfCorrectAnswers = 0
    
    
    @IBOutlet weak var questionText: UILabel!
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    func retrieve() {
        self.questions = model.questions
        tableView.reloadData()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        //model.delegate = self
        
        //model.getLocalData()
        
        //tableView.reloadData()
       
    }

    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //print(questions?[currentQuestionIndex].question)
        //return questions?[currentQuestionIndex].answers?.count ?? 0
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath)
        let label = cell.viewWithTag(1) as? UILabel
        if label != nil {
            label?.text = "aaaa"
            
        }
        return cell
       
    }
    
    

}

