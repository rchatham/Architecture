//
//  Router.swift
//  CoordinatorType-iOSExample
//
//  Created by Reid Chatham on 6/1/17.
//  Copyright © 2017 Reid Chatham. All rights reserved.
//

import Foundation

/// Router object which can be used to make data calls.
public protocol Router: class {
    static var shared: Self { get }
}

/// A Router that cannot be used to perform any functions.
public final class NilRouter: Router {
    public static let shared = NilRouter()
}
