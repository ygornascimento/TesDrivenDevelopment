//
//  MockPedometer.swift
//  FitNessTests
//
//  Created by Ygor Nascimento on 30/04/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import CoreMotion
@testable import FitNess

class MockPedometer: Pedometer {
  private(set) var started: Bool  = false

  func start() {
    started = true
  }


}
