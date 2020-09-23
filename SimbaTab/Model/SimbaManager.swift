//
//  SimbaManager.swift
//  SimbaTab
//
//  Created by Vinh Tran on 23/9/20.
//  Copyright © 2020 Vinh Tran. All rights reserved.
//

import Foundation

struct SimbaManager {
    private (set) var characters:[String:LKCharacter] = [:]
    
    init() {
        loadCharacters()
    }
    
    private mutating func loadCharacters() {
        characters.updateValue(LKCharacter.hey, forKey: LKCharacter.hey.rawValue)
        characters.updateValue(LKCharacter.roar, forKey: LKCharacter.roar.rawValue)
        characters.updateValue(LKCharacter.king, forKey: LKCharacter.king.rawValue)
        characters.updateValue(LKCharacter.tickle, forKey: LKCharacter.tickle.rawValue)
    }
    
    func getDetails(forKey key:String) -> LKCharacter {
        guard let lkCharacter = characters[key] else {
            return LKCharacter.unknown
        }
        return lkCharacter
    }
    
}
