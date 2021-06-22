//
//  Computer.swift
//  DependencyInjection-Sample
//
//  Created by Kazunori Aoki on 2021/06/22.
//

import Foundation

class Computer {
    private var operatingSystem: String
    
    init(operatingSystem: String) {
        self.operatingSystem = operatingSystem
    }
    
    func printOperatingSystem() {
        print(operatingSystem)
    }
}
