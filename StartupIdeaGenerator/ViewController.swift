//
//  ViewController.swift
//  StartupIdeaGenerator
//
//  Created by Gobind Puniani on 7/4/18.
//  Copyright © 2018 Gobind Puniani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let label1Answers = ["Uber", "SpaceX", "Tesla", "Google", "Airbnb", "Snapchat", "Twitter", "Netflix", "Make School", "Kickstarter", "Spotify", "Amazon", "Apple", "Tinder", "Craigslist", "Dropbox"]
    let label2Answers = ["Dogs", "Old People", "Rich People", "Water", "Startups", "Venture Capital", "Books", "Gamers", "Mars", "Pizza", "Hospitals"]
    
    @IBOutlet weak var Label1: UILabel!
    @IBOutlet weak var Label2: UILabel!
    @IBOutlet weak var shakeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func generateAnswer(answers: [String]) {
        let maxIndex = UInt32(answers.count)
        let randomIndex = Int(arc4random_uniform(maxIndex))
        if answers == label1Answers {
            Label1.text = answers[randomIndex]
        }
        else {
            Label2.text = answers[randomIndex]
        }
    }

    @IBAction func shakeButtonTapped(_ sender: Any) {
        generateAnswer(answers: label1Answers)
        generateAnswer(answers: label2Answers)
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }
        
        generateAnswer(answers: label1Answers)
        generateAnswer(answers: label2Answers)
    }
    
}

