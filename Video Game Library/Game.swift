//
//  Game.swift
//  Video Game Library
//
//  Created by James D. Williams on 9/4/18.
//  Copyright © 2018 Visioncast Solutions. All rights reserved.
//

import Foundation

class Game {
    let title: String
    let rating: String
    var checkedIn: Bool
    var dueDate: Date?
    
    init(title: String, rating: String) {
        self.title = title
        self.rating = rating
        self.checkedIn = true
        self.dueDate = nil
    }
}
