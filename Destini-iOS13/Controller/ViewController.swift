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
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView(storyBrain.getCurrentStory())
    }
    
    @IBAction func buttonAction(_ sender: UIButton) {
        let actionName = sender.currentTitle!
        storyBrain.nexStory(actionName)
        updateView(storyBrain.getCurrentStory())
    }
    
    func updateView(_ story: Story){
        storyLabel.text = story.title
        choice1Button.setTitle(story.choice1, for: .normal)
        choice2Button.setTitle(story.choice2, for: .normal)
    }


}

