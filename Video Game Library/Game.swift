//
//  Game.swift
//  Video Game Library
//
//  Created by James D. Williams on 9/4/18.
//  Copyright © 2018 Visioncast Solutions. All rights reserved.
//

import Foundation

// Below: This is te data model that represents our Games that will be storee in the library.

class Game {
    
    // Below:  This will store the title of the Game
    var title: String
    
    // Below:  We are going to set this to true by default since whenver we create a new Game, we're going to assume it's checked in

    var checkedIn = true
    
    
    // Below: This is optional because if a game isn't checked out, it shouldn't have a due date
    var dueDate: Date?
    
    // Since checkedIn has a default value and dueDate is an optional, the only value that we have to initialize is the title
    init(title: String) {
        self.title = title
        
    }
    
}
