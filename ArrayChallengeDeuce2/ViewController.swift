//
//  ViewController.swift
//  ArrayChallengeDeuce2
//
//  Created by James Campagno on 7/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // This represents our deliLine.
    var deliLine: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    // Add name to deli line
    
    func addNameToDeliLine (name: String) -> String {
        if name == "Billy Crystal" {
            deliLine.insert("Billy Crystal", atIndex:0)
            return "Welcome Billy! You can sit wherever you like."
        }
        else if name == "Meg Ryan" {
            deliLine.insert("Meg Ryan", atIndex:0)
            return "Welcome Meg! You can sit wherever you like."
        }
        else if deliLine.count == 0 {
            deliLine.append(name)
            return "Welcome \(name), you're first in line!"
        }
        else {
            deliLine.append(name)
            return ("Welcome \(name), you are number \(deliLine.count) in line.")
        }
        
    }
    
    
    
    // Now Serving...
    
    func nowServing () -> String {
        if deliLine.isEmpty {
            return "There is no one to be served."
        } else {
            let personToServe = deliLine[0]
            deliLine.removeAtIndex(0)
            return "Now serving \(personToServe)"
        }
        
    }

    
    
    // Deli Line Description
    
    func deliLineDescription () -> String {
        
        var result = "The line is:"
        
        if deliLine.isEmpty {
            return "The line is currently empty."
        } else {
            for (index, name) in deliLine.enumerate(){
                result += "\n \(index + 1) \(name)"
            }
        }
        return result
    }
    
    
}


