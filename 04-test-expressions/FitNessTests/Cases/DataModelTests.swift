//
//  DataModelTests.swift
//  FitNessTests
//
//  Created by Ygor Nascimento on 12/04/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import XCTest
@testable import FitNess

class DataModelTests: XCTestCase {

  var sut: DataModel!

  override func setUp() {
    super.setUp()
    sut = DataModel()
  }

  override func tearDown() {
    sut = nil
    super.tearDown()
  }

  func testModel_whenStepsReachGoal_goalIsReached() {
    //given
    sut.goal = 1000

    //when
    sut.steps = 1000

    //then
    XCTAssertTrue(sut.goalReached)
  }

  //MARK: - Goal
  func testModel_whenStarted_goalIsNotReached() {
    XCTAssertFalse(sut.goalReached, "goalReached should be false when the model is created")
  }

}
