//
//  ViewModel.swift
//  CoordinatorType-iOSExample
//
//  Created by Reid Chatham on 6/1/17.
//  Copyright © 2017 Reid Chatham. All rights reserved.
//

import Foundation

public protocol ViewModel {
    associatedtype Data
    associatedtype E: Error
    var state: State<Data, E>? { get }
    
    associatedtype Network: NetworkRouter
    weak var network: Network? { get }
}

extension ViewModel {
    weak var network: Network? {
        return Network.shared as? Self.Network
    }
}
