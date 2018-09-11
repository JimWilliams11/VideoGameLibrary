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
    
    let library = Library() //Create a new instance of the Library class
    
    func go() {
        //Display the menu
        printMenu()
        
        repeat {
            //Take user input
            var input = getInput()
            
            //Check to see whether the input is valid by calling the validateInput function. Carry out the code inside the loop while it's not valid
            while validateInput(input) == false {
                print("Invalid input")
                //Display the menu again
                printMenu()
                //Get more input
                input = getInput()
            }
            
            //Since the input is valid, handle it by calling the handleInput function
            handleInput(input)
            
        } while !shouldQuit //Run the go function while shouldQuit = false
    }
    
    //Function to display our Video Game Library Menu
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
        case "1": // if input == 1
            library.addGame() //Call the library's addGame function
        case "2": // if input == 2
            library.removeGame() //Call the library's removeGame function
        case "3": // if input == 3
            library.listAvailableGames() //Call the library's listAvailableGames function
        case "4": // if input == 4
            library.checkOut()
        case "5": // ...
            library.checkIn()
        case "6":
            library.listUnavailableGames()
        case "7", "help":
            printMenu()
        case "8":
            quit()
        default: // if input is anything else
            break
        }
    }
    
    func quit() {
        shouldQuit = true
        print("Thanks for using the video game library")
    }
}
