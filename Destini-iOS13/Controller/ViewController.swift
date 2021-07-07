//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    @IBOutlet weak var storyLabel: UILabel!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateStory()
    }
    
    func updateStory(){
        storyLabel.text = storyBrain.getCurrentStory().title;
        choice1Button.setTitle(storyBrain.getCurrentStory().choice1, for: .normal)
        choice2Button.setTitle(storyBrain.getCurrentStory().choice2, for: .normal)
    }
    
    @IBAction func choiceMode(_ sender: UIButton) {
        storyBrain.nextStory(sender.currentTitle!)
        updateStory()
    }
    
}

