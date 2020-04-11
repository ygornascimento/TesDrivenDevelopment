//
//  AppModelTests.swift
//  FitNessTests
//
//  Created by Ygor Nascimento on 11/04/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import XCTest
@testable import FitNess

class AppModelTests: XCTestCase {

  var sut: AppModel!

  override func setUp() {
    super.setUp()
    sut = AppModel()
  }

  override func tearDown() {
    sut = nil
    super.tearDown()
  }

  func testAppModel_whenInitialized_isInNotStartedState() {
    let initialState = sut.appState
    XCTAssertEqual(initialState, AppState.notStarted)
  }

  func testAppModel_whenStarted_isInProgressState() {
    //1 given app in not started

    //2 when started
    sut.start()

    //3 then it is in inProgress
    let observedState = sut.appState
    XCTAssertEqual(observedState, AppState.inProgress)
  }
}
