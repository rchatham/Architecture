//
//  State.swift
//  CoordinatorType-iOSExample
//
//  Created by Reid Chatham on 6/1/17.
//  Copyright © 2017 Reid Chatham. All rights reserved.
//

import Foundation

public enum State<Data, E: Error> {
    case loading(Progress?)
    case loaded(Data?)
    case error(E)
}
