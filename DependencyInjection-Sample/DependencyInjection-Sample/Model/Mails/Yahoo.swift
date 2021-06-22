//
//  Yahoo.swift
//  DependencyInjection-Sample
//
//  Created by Kazunori Aoki on 2021/06/22.
//

import Foundation

class Yahoo: EmailAccount {
    var username: String {
        return "jogn "
    }
    
    var domain: String {
        return "yahoo.com"
    }
    
    var lastEmailReceived: Date {
        return Date()
    }
}
