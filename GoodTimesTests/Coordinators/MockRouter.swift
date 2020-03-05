//
//  MockRouter.swift
//  GoodTimesTests
//
//  Created by Ben Winters on 3/5/20.
//  Copyright © 2020 Ben Winters. All rights reserved.
//

import UIKit
@testable import GoodTimes

class MockRouter: Router {
  
  var presentWasCalled = false
  func present(_ viewController: UIViewController, animated: Bool, onDismissed: (() -> Void)?) {
    
  }
  
  var dismissWasCalled = false
  func dismiss(animated: Bool) {
    
  }
  
}
