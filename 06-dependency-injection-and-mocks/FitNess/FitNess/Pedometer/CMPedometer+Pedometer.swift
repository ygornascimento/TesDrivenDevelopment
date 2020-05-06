//
//  CMPedometer+Pedometer.swift
//  FitNess
//
//  Created by Ygor Nascimento on 30/04/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import Foundation
import CoreMotion

extension CMPedometer: Pedometer {

  var permissionDeclined: Bool {
    return CMPedometer.authorizationStatus() == .denied
  }

  var pedometerAvailable: Bool {
    return CMPedometer.isStepCountingAvailable() && CMPedometer.isDistanceAvailable() && CMPedometer.authorizationStatus() != .restricted
  }
  func start(completion: @escaping (Error?) -> Void) {
    startEventUpdates { (event, error) in
      completion(error)
    }
  }
}
