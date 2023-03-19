//
//  ViewController.swift
//  RPC
//
//  Created by Сергей Розов on 07.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var appSign: UILabel!
    @IBOutlet weak var gameStatus: UILabel!
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var tyrannosaurusButton: UIButton!
    @IBOutlet weak var spockButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    
    @IBAction func rockChosen(_ sender: Any) {
        play(userSign: .rock)
    }
    
    @IBAction func paperChosen(_ sender: Any) {
        play(userSign: .paper)
    }
        
    @IBAction func scissorsChosen(_ sender: Any) {
        play(userSign: .scissors)
    }

    @IBAction func tyrannosaurusChosen(_ sender: Any) {
        play(userSign: .tyrannosaurus)
    }
    
    @IBAction func spockChosen(_ sender: Any) {
        play(userSign: .spock)
    }
    
    @IBAction func playAgainChosen(_ sender: Any) {
        updateGameStatus(state: .start)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateGameStatus(state: .start)
    }
    
    func updateGameStatus(state:GameState) {
        gameStatus.text = state.status
        switch state {
        case .start:
            view.backgroundColor = state.backgroundColor
            appSign.text = "🤖"
            playAgainButton.isHidden = true
            rockButton.isHidden = false
            paperButton.isHidden = false
            scissorsButton.isHidden = false
            tyrannosaurusButton.isHidden = false
            spockButton.isHidden = false
            rockButton.isEnabled = true
            paperButton.isEnabled = true
            scissorsButton.isEnabled = true
            tyrannosaurusButton.isEnabled = true
            spockButton.isEnabled = true
        case .win:
            view.backgroundColor = state.backgroundColor
        case .lose:
            view.backgroundColor = state.backgroundColor
        case .draw:
            view.backgroundColor = state.backgroundColor
        }
    }
    
    func play(userSign: Sign) {
        let computerSign = randomSign()
        let gameState = userSign.compare(computerSign)
        appSign.text = computerSign.emoji
        updateGameStatus(state: gameState)
        rockButton.isEnabled = false
        paperButton.isEnabled = false
        scissorsButton.isEnabled = false
        tyrannosaurusButton.isEnabled = false
        spockButton.isEnabled = false
        rockButton.isHidden = true
        paperButton.isHidden = true
        scissorsButton.isHidden = true
        tyrannosaurusButton.isHidden = true
        spockButton.isHidden = true
        playAgainButton.isHidden = false
        switch userSign {
        case .rock:
            rockButton.isHidden = false
        case .paper:
            paperButton.isHidden = false
        case .scissors:
            scissorsButton.isHidden = false
        case .tyrannosaurus:
            tyrannosaurusButton.isHidden = false
        case .spock:
            spockButton.isHidden = false
        }
    }
}
