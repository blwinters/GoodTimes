//
//  MockAppCoordinator.swift
//  GoodTimesTests
//
//  Created by Ben Winters on 3/5/20.
//  Copyright © 2020 Ben Winters. All rights reserved.
//

import Foundation
import UIKit
@testable import GoodTimes

class MockAppCoordinator: Coordinator {
    
  var router: Router
  var children: [Coordinator]
  
  init(router: Router, children: [Coordinator]) {
    self.router = router
    self.children = children
  }
  
  convenience init() {
    self.init(router: MockRouter(), children: [])
  }
  
  var presentWasCalled = false
  func present(animated: Bool, onDismissed: (() -> Void)?) {
    presentWasCalled = true
  }

}
