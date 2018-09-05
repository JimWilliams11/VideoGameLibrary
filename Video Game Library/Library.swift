//
//  Library.swift
//  Video Game Library
//
//  Created by James D. Williams on 9/4/18.
//  Copyright © 2018 Visioncast Solutions. All rights reserved.
//

import Foundation


class Library {
    
    private var gameArray: [Game] = [Game(title: "Mario Kart"), Game(title: "Fruit Ninja"), Game(title: "UFC by EA Sports"), Game(title: "Dude Perfect")]
    
    func addGame() {
        print("Please enter the title of the game: ")
        
        var newGameTitle = readLine()
        
        while newGameTitle == nil || newGameTitle == "" {
            print("Invalid title, please try again: ")
            newGameTitle = readLine()
        }
        let newGame = Game(title: newGameTitle!)
        gameArray.append(newGame)
        
        for game in gameArray {
            print(game.title
            )
        }
        
    }
    
    func removeGame() {
        
        for index in 0..<gameArray.count {
            print("\(index). \(gameArray[index].title)")
        }
        
        print("Please enter the index of the game you wish to remove: ")
        
        var userInput = Int(readLine()!)
        
        while userInput == nil {
            print("Invalid input. Please enter a usable index.")
            userInput = Int(readLine()!)
        }
        
        gameArray.remove(at: userInput!)
    }
    
    func listAvailableGames() {
        
        gameArray[0].checkedIn = false
        
        for game in gameArray {
            if game.checkedIn {
                print(game.title)
            }
        }
    }
    
    func listUnavailableGames() {
        
        gameArray[0].checkedIn = false
        
        for game in gameArray {
            if !game.checkedIn {
                print(game.title)
                if let dueDate = game.dueDate {
                    let dateFormatter = DateFormatter()
                    dateFormatter.dateFormat = "MM/dd/yyyy"
                    print(dateFormatter.string(from: dueDate))
                    
                }
            }
        }
    }
    
    func checkGameOut() {
        
        for index in 0..<gameArray.count {
            print("\(index). \(gameArray[index].title)")
        }
        
        print("Please enter the index of the game you wish to check out: ")
        
        var userInput = Int(readLine()!)
        
        while userInput == nil {
            print("Invalid input. Please enter a usable index.")
            userInput = Int(readLine()!)
        }
        
        gameArray[userInput!].checkedIn = false
        
        let currentCalendar = Calendar.current
        let dueDate = currentCalendar.date(byAdding: .day, value: 14, to: Date())
        
        gameArray[userInput!].dueDate = dueDate
    }
    
    func checkGameIn() {
        for index in 0..<gameArray.count {
            print("\(index). \(gameArray[index].title)")
        }
        
        print("Please enter the index of the game you wish to check out: ")
        
        var userInput = Int(readLine()!)
        
        while userInput == nil {
            print("Invalid input. Please enter a usable index.")
            userInput = Int(readLine()!)
        }
        
        gameArray[userInput!].checkedIn = true
        
        gameArray[userInput!].dueDate = nil
        
    }
    
}






