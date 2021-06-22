//
//  Gmail.swift
//  DependencyInjection-Sample
//
//  Created by Kazunori Aoki on 2021/06/22.
//

import Foundation

class Gmail: EmailAccount {
    var username: String {
        return "jogn "
    }
    
    var domain: String {
        return "gmail.com"
    }
    
    var lastEmailReceived: Date {
        return Date()
    }
}
