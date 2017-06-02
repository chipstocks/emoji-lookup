//
//  ViewController.swift
//  EmojiLookup
//
//  Created by Chip's 2017 Mac on 5/27/17.
//  Copyright © 2017 Chip's 2017 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
   
    @IBOutlet var dacooltableview: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        dacooltableview.dataSource = self
        dacooltableview.delegate = self
        emojis = makeEmojiArray()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji )
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as!
        DefinitionViewController
        defVC.emoji = sender as! String
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray() ->[Emoji] {
     let emoji1 = Emoji()
        emoji1.stringEmoji = "😃"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "A smiley face without sunglasses"
        
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😀"
        emoji2.birthYear = 2011
        emoji2.category = "Smiley 2"
        emoji2.definition = "A smiley face without sunglasses"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🤡"
        emoji3.birthYear = 2012
        emoji3.category = "Clown Face"
        emoji3.definition = "A scary Clown Face"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "😡"
        emoji4.birthYear = 2013
        emoji4.category = "Emo"
        emoji4.definition = "A really mad face"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🤠"
        emoji5.birthYear = 2014
        emoji5.category = "Fun"
        emoji5.definition = "Cowboy Smiley"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "😩"
        emoji6.birthYear = 2015
        emoji6.category = "Emo"
        emoji6.definition = "Cry baby Face"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6]
        

    }

}

