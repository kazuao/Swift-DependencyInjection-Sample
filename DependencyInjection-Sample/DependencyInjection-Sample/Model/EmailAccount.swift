//
//  EmailAccount.swift
//  DependencyInjection-Sample
//
//  Created by Kazunori Aoki on 2021/06/22.
//

import Foundation

protocol EmailAccount {
    var username: String { get }
    var domain: String { get }
    var lastEmailReceived: Date { get }
}
