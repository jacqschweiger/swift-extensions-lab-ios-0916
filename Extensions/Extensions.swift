//
//  Extensions.swift
//  Extensions
//
//  Created by Jacqueline Minneman on 10/2/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

extension String {
    func whisper() -> String {
        return self.lowercased()
    }
}

extension String {
    func shout() -> String {
        return self.uppercased()
    }
}

extension String {
    var pigLatin: String {
        var phrase = self
        var translatedPhrase: String = ""
        var newArray:[String] = []
        
        
        for word in phrase.components(separatedBy: " "){ //array of strings
            var indivWord = word                       // each word on its own as string, not array
            let firstLetter = indivWord.remove(at: indivWord.startIndex)    //first letter removed
            
            if indivWord == "" {
                phrase = String(firstLetter)
            } else {
                phrase = indivWord + String(firstLetter) + "ay" //string of piglatin
            }
            
            newArray.append(phrase) // add strings back to array
            
            translatedPhrase = newArray.joined(separator: " ").lowercased().capitalized //change array to string
        }
        return translatedPhrase
    }
}

extension String {
    var points: Int {
        var score = 0
        let characters = self.characters
        for char in characters {
            let charString = "\(char)"
            if charString.lowercased() == "a" || charString.lowercased() == "e" || charString.lowercased() == "i" || charString.lowercased() == "o" || charString.lowercased() == "u" || charString.lowercased() == "y" {
                score += 2
            } else if charString == " "  || charString == "1" || charString == "2" || charString == "3" || charString == "4" || charString == "5" || charString == "6" || charString == "7" || charString == "8" || charString == "9" || charString == "0" {
                score += 0
            } else if charString == ""{
                score += 0
            } else {
                score += 1
            }
        }
        return score
    }
}

extension Int {
    func half() -> Double {
        return (Double(self) * 0.5)
    }
}

extension Int {
    func isDivisible(by number: Int) -> Bool {
        if self % number == 0 {
            return true
        } else {
            return false
        }
    }
}

extension Int {
    var squared: Double {
        return Double(self) * Double(self)
    }
}


extension Int {
    var halved: Double {
       return self.half()
    }
}

extension String {
    var unicornLevel: String {
        var newString = ""
        let characters = self.characters
        for char in characters {
            if char == " "{
                newString.append("")
            } else {
            newString.append("🦄")
        }
        }
        return newString
    }
}






