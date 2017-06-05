//
//  ViewModelable.swift
//  CoordinatorType-iOSExample
//
//  Created by Reid Chatham on 6/1/17.
//  Copyright © 2017 Reid Chatham. All rights reserved.
//

import Foundation

public protocol ViewModelable {
    associatedtype T: ViewModel
    var viewModel: T { get }
    init(viewModel: T)
}
