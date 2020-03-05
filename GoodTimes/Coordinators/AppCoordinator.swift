//
//  AppCoordinator.swift
//  GoodTimes
//
//  Created by Ben Winters on 3/5/20.
//  Copyright © 2020 Ben Winters. All rights reserved.
//

import Foundation

class AppCoordinator: Coordinator {

  var children: [Coordinator] = []
  let router: Router

  init(router: Router) {
    self.router = router
  }

  func present(animated: Bool, onDismissed: (() -> Void)?) {
    
  }

}
