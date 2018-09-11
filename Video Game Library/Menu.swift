//
//  Menu.swift
//  Video Game Library
//
//  Created by James D. Williams on 8/30/18.
//  Copyright © 2018 Visioncast Solutions. All rights reserved.
//

import Foundation

class Menu {
    var shouldQuit = false
    
    let library = Library()
    
    func go() {
        
        printMenu()
        
        repeat {
            
            var input = getInput()
            
            while validateInput(input) == false {
                print("Invalid input")
                
                printMenu()
                
                input = getInput()
            }
            
            handleInput(input)
            
        } while !shouldQuit
    }
    
    func printMenu() {
        print("""

            Menu
            1 Add Game
            2 Remove Game
            3 List Available Games
            4 Check Out Game
            5 Check In Game
            6 List Checked Out Games
            7 Help or type in "help"
            8 Quit
            
            """)
    }
    
    func handleInput(_ input: String) {
        switch input {
        case "1":
            library.addGame()
        case "2":
            library.removeGame()
        case "3":
            library.listAvailableGames()
        case "4":
            library.checkOut()
        case "5":
            library.checkIn()
        case "6":
            library.listUnavailableGames()
        case "7", "help":
            printMenu()
        case "8":
            quit()
        default: 
            break
        }
    }
    
    func quit() {
        shouldQuit = true
        print("Thanks for using the video game library")
    }
}
