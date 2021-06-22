//
//  Programmer.swift
//  DependencyInjection-Sample
//
//  Created by Kazunori Aoki on 2021/06/22.
//

import Foundation

class Programmer {
    
    let programmingLanguage: ProgrammingLanguage
    let name: String
    let computerUsed: Computer
    
    init(programmingLanguage: ProgrammingLanguage, name: String, computerUsed: Computer) {
        self.programmingLanguage = programmingLanguage
        self.name = name
        self.computerUsed = computerUsed
    }
    
    func cathcPharase() -> String {
        var catchPhrase = ""
        
        switch programmingLanguage {
        case .swift:
            catchPhrase = "My programming language is cooler than Objective-C"
        case .java:
            catchPhrase = "Java is great, it can run on any platform, write once run everywher!"
        case .python:
            catchPhrase = "Machine learning is cool, so is python."
        case .javaScript:
            catchPhrase = "We dominate the web and we can make mobile apps too."
        case .objectiveC:
            catchPhrase = "I don't want to use Swift! Ihave to upgrade my projects with each new Swift release."
        }
        
        return catchPhrase
    }
}
