//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by Joseph Yang on 6/12/19.
//  Copyright © 2019 Zhaoxu Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Using iPhone SE simulator layout
    
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var button4: UIButton!
    @IBOutlet var button5: UIButton!
    @IBOutlet var button6: UIButton!
    @IBOutlet var button7: UIButton!
    @IBOutlet var button8: UIButton!
    @IBOutlet var button9: UIButton!
    @IBOutlet var winningMessage: UILabel!
    @IBOutlet var playAgainButton: UIButton!
    
    @IBAction func playAgain(_ sender: Any) {
        boardState = [0, 0, 0, 0, 0, 0, 0, 0, 0]
        gameOver = false
        currentPlayer = 1
        winningPlayer = 0
        for button in buttons {
            button.isEnabled = true
            button.imageView?.alpha = 0
            button.isHidden = false
        }
        playAgainButton.isHidden = true
        winningMessage.isHidden = true
    }
    
    var boardState = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    let winCases = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
    
    var gameOver = false
    
    /*
        +1 ----- circle
        -1 ----- cross
     */
    var currentPlayer = 1
    
    var winningPlayer = 0
    
    @IBAction func buttonPressed(_ sender: AnyObject) {
        let index = sender.tag - 1
        if boardState[index] == 0{
            boardState[index] = currentPlayer
            currentPlayer = -currentPlayer
            if boardState[index] == 1 {
                sender.setImage(UIImage(named: "circle.png"), for: [])
            }
            else {
                sender.setImage(UIImage(named: "cross.png"), for: [])
            }
            for condition in winCases {
                if boardState[condition[0]] != 0 && boardState[condition[0]] == boardState[condition[1]] && boardState[condition[0]] == boardState[condition[2]] {
                    gameOver = true
                    winningPlayer = boardState[condition[0]]
                    break
                }
            }
            if gameOver {
                for i in 0...8 {
                    if boardState[i] == 0 {
                        buttons[i].isHidden = true
                    }
                    else {
                        buttons[i].isEnabled = false
                    }
                }
                if winningPlayer == 1 {
                    winningMessage.text = "Player 1 (circle) won the game! Congratulations!"
                }
                if winningPlayer == -1 {
                    winningMessage.text = "Player 2 (cross) won the game! Congratulations!"
                }
                winningMessage.isHidden = false
                playAgainButton.isHidden = false
            }
        }
    }
    
    var buttons: [UIButton] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        buttons = [button1, button2, button3, button4, button5, button6, button7, button8, button9]
        
        for button in buttons {
            button.imageView?.alpha = 0
        }
        winningMessage.isHidden = true
        playAgainButton.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

