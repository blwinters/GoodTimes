//
//  Router.swift
//  GoodTimes
//
//  Created by Ben Winters on 2/28/20.
//  Copyright © 2020 Ben Winters. All rights reserved.
//

import UIKit

protocol Router: AnyObject {
    func present(_ viewController: UIViewController, animated: Bool)
    func present(_ viewController: UIViewController, animated: Bool, onDismissed: (() -> Void)?)
    func dismiss(animated: Bool)
}

extension Router {
    func present(_ viewController: UIViewController, animated: Bool) {
        present(viewController, animated: animated, onDismissed: nil)
    }
}
