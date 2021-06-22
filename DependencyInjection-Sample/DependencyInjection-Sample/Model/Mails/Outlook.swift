//
//  Outlook.swift
//  DependencyInjection-Sample
//
//  Created by Kazunori Aoki on 2021/06/22.
//

import Foundation

class Outlook: EmailAccount {
    var username: String {
        return "jogn"
    }
    
    var domain: String {
        return "outlook.com"
    }
    
    var lastEmailReceived: Date {
        return Date()
    }
}
