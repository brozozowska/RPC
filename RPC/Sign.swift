//
//  Sign.swift
//  RPC
//
//  Created by Сергей Розов on 07.12.2022.
//

import Foundation

func randomSign() -> Sign {
    let sign = Int.random(in: 0...4)
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else if sign == 2 {
        return .scissors
    } else if sign == 3 {
        return .tyrannosaurus
    } else {
        return .spock
    }
}

enum Sign {
    case rock, paper, scissors, tyrannosaurus, spock
    
    var emoji: String {
        switch self {
        case .rock: return "👊"
        case .paper: return "🤚"
        case .scissors: return "✌️"
        case .tyrannosaurus: return "🦖"
        case .spock: return "🖖"
        }
    }
    
    func compare(_ otherSign: Sign) -> GameState {
        switch (self, otherSign) {
        
        case (.rock, .rock): return .draw
        case (.rock, .paper): return .lose
        case (.rock, .scissors): return .win
        case (.rock, .tyrannosaurus): return .win
        case (.rock, .spock): return .lose
            
        case (.paper, .rock): return .win
        case (.paper, .paper): return .draw
        case (.paper, .scissors): return .lose
        case (.paper, .tyrannosaurus): return .lose
        case (.paper, .spock): return .win
            
        case (.scissors, .rock): return .lose
        case (.scissors, .paper): return .win
        case (.scissors, .scissors): return .draw
        case (.scissors, .tyrannosaurus): return .win
        case (.scissors, .spock): return .lose
            
        case (.tyrannosaurus, .rock): return .lose
        case (.tyrannosaurus, .paper): return .win
        case (.tyrannosaurus, .scissors): return .lose
        case (.tyrannosaurus, .tyrannosaurus): return .draw
        case (.tyrannosaurus, .spock): return .win
            
        case (.spock, .rock): return .win
        case (.spock, .paper): return .lose
        case (.spock, .scissors): return .win
        case (.spock, .tyrannosaurus): return .lose
        case (.spock, .spock): return .draw
        }
    }
}
