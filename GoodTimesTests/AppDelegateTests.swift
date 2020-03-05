//
//  AppDelegateTests.swift
//  GoodTimesTests
//
//  Created by Ben Winters on 2/28/20.
//  Copyright © 2020 Ben Winters. All rights reserved.
//

import XCTest
@testable import GoodTimes

class AppDelegateTests: XCTestCase {
  var sut: AppDelegate!
  var mockCoordinator: MockAppCoordinator!

  override func setUp() {
    super.setUp()
    self.sut = UIApplication.shared.delegate as? AppDelegate
    self.mockCoordinator = MockAppCoordinator()
    self.sut._coordinator = mockCoordinator
  }
  
  override func tearDown() {
    self.sut = nil
    self.mockCoordinator = nil
    super.tearDown()
  }
  
  func testAppDelegatePresentsCoordinatorOnLaunch() {
    _ = self.sut.application(UIApplication.shared, didFinishLaunchingWithOptions: [:])
    XCTAssertTrue(mockCoordinator.presentWasCalled)
  }
}
