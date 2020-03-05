//
//  Coordinator.swift
//  GoodTimes
//
//  Created by Ben Winters on 2/28/20.
//  Copyright © 2020 Ben Winters. All rights reserved.
//

import UIKit

protocol Coordinator: AnyObject {
    var router: Router { get }
    var children: [Coordinator] { get }
    func start()
}
