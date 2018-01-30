//
//  ViewModel.swift
//  CoordinatorType-iOSExample
//
//  Created by Reid Chatham on 6/1/17.
//  Copyright © 2017 Reid Chatham. All rights reserved.
//

import Foundation

/// The ViewModel maintains a view's state object as well as it's interface with it's network.
public protocol ViewModel: Stateful, Routing {}

/// Conforming to Stateful means you keep a state object.
public protocol Stateful {
    associatedtype Data
    associatedtype E: Error
    var state: State<Data, E>? { get }
}

/// Conforming to Networking means you have access to a network router
public protocol Routing {
    associatedtype RouterType: Router
    weak var router: RouterType? { get }
}

extension Routing {
    public weak var router: RouterType? {
        return RouterType.shared as Self.RouterType
    }
}


/// NilStateViewModel. 
/// Initializes with no state for the ViewModel but needs a network specified.
public protocol NilStateViewModel: ViewModel where E == NoError, Data == Void {}

extension NilStateViewModel {
    var state: State<Void, NoError>? { return nil }
}

/// NilNetworkViewModel. 
/// Initializes with no network, needs the state specified.
public protocol NilNetworkViewModel: ViewModel where RouterType == NilRouter {}

extension NilNetworkViewModel {
    weak var router: NilRouter? { return nil }
}
