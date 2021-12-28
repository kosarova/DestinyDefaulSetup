//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyLogic = StoryLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        storyLogic.checkAnswer(userAnswer!)
        
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storyLogic.getTitle()
        choice1Button.setTitle(storyLogic.getChoice1(), for: .normal)
        choice2Button.setTitle(storyLogic.getChoice2(), for: .normal)
    }
}

