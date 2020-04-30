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
  func start() {
    startEventUpdates { (event, error) in
      //
    }
  }
}
