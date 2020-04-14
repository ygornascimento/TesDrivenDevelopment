//
//  RootViewController+Tests.swift
//  FitNessTests
//
//  Created by Ygor Nascimento on 14/04/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import UIKit
@testable import FitNess

extension RootViewController {
  var stepController: StepCountController {
    return children.first {$0 is StepCountController} as! StepCountController
  }
}
