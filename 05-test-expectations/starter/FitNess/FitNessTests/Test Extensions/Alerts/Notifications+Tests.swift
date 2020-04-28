//
//  Notifications+Tests.swift
//  FitNessTests
//
//  Created by Ygor Nascimento on 27/04/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import XCTest
@testable import FitNess

class Notifications_Tests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
}

extension Notification {
  var alert: Alert? {
    return userInfo?[AlertNotification.Keys.alert] as? Alert
  }
}
