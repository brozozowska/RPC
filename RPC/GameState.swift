//
//  GameState.swift
//  RPC
//
//  Created by Сергей Розов on 07.12.2022.
//

import Foundation
import UIKit

enum GameState {
    case start, win, lose, draw
    
    var status: String {
        switch self {
        case .start:
            return "Rock, Paper, Scissors,\nTyrannosaurus, Spock?"
        case .win:
            return "You Won!"
        case .lose:
            return "You Lose!"
        case .draw:
            return "Draw!"
        }
    }
    
    var backgroundColor: UIColor {
        switch self {
        case .start:
            return UIColor(red: 0, green: 0.65, blue: 0.8, alpha: 1)
        case .win:
            return UIColor(red: 0, green: 0.75, blue: 0.5, alpha: 1)
        case .lose:
            return UIColor(red: 1, green: 0.25, blue: 0, alpha: 1)
        case .draw:
            return UIColor(red: 0.25, green: 0.35, blue: 5, alpha: 1)
        }
    }
}
