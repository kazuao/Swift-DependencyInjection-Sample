//
//  SomeService.swift
//  DependencyInjection-Sample
//
//  Created by Kazunori Aoki on 2021/06/22.
//

import Foundation

class SomeService {
    
    private init() {}
    static let shared = SomeService()
    
    func doStuff() {
        print("Did Stuff")
    }
}
