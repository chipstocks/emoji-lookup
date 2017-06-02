//
//  DefinitionViewController.swift
//  EmojiLookup
//
//  Created by Chip's 2017 Mac on 5/29/17.
//  Copyright © 2017 Chip's 2017 Mac. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBOutlet weak var birthYearLabel: UILabel!
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "no EMOJI"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print(emoji)
        
        emojiLabel.text = emoji
        //"😃", "😀", "🤡", "😡", "🤠", "😩"
        if emoji == "😃" {
    definitionLabel.text = "Smiley Face"
        }
        if emoji == "😃" {
            definitionLabel.text = "Smiley Face"
            categoryLabel.text = "Category: Smile"
            birthYearLabel.text = "Birth Year: 2010"
        }
        if emoji == "😀" {
            definitionLabel.text = "Smiley Face 2"
            categoryLabel.text = "Category: Smile"
            birthYearLabel.text = "Birth Year: 2011"
        }
        if emoji == "🤡" {
            definitionLabel.text = "Clown Face"
            categoryLabel.text = "Category: Clown"
            birthYearLabel.text = "Birth Year: 2012"
        }
        if emoji == "😡" {
            definitionLabel.text = "Mad Face"
            categoryLabel.text = "Category: Emo"
            birthYearLabel.text = "Birth Year: 2013"
        }
        if emoji == "🤠" {
            definitionLabel.text = "Cowboy Face"
            categoryLabel.text = "Category: Fun"
            birthYearLabel.text = "Birth Year: 2014"
        }
        if emoji == "😩" {
            definitionLabel.text = "Crybaby Face"
            categoryLabel.text = "Category: Emo"
            birthYearLabel.text = "Birth Year: 2015"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
