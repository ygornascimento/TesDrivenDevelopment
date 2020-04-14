//
//  StepCountControllerTests.swift
//  FitNessTests
//
//  Created by Ygor Nascimento on 11/04/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import XCTest
@testable import FitNess

class StepCountControllerTests: XCTestCase {

  var sut: StepCountController!

  override func setUp() {
    super.setUp()
    sut = StepCountController()
  }

  override func tearDown() {
    sut = nil
    super.tearDown()
  }

  fileprivate func startStopPause() {
    //when
    sut.startStopPause(nil)
  }

  //MARK: - Initial State
  func testController_whenCreated_buttonlabelIsStart() {
    //given
    sut.viewDidLoad()

    let buttonText  = sut.startButton.title(for: .normal)
    XCTAssertEqual(buttonText, AppState.notStarted.nextStateButtonLabel)
  }
  //MARK: - In Progress



  func testController_whenStartButtonTapped_appStateIsInProgress() {
    startStopPause()

    //then
    let state = AppModel.instance.appState
    XCTAssertEqual(state, AppState.inProgress)
  }

  func testController_whenStartButtonTapped_buttonLabelIsPause() {
    //when
    startStopPause()

    //then
    let text = sut.startButton.title(for: .normal)
    XCTAssertEqual(text, AppState.inProgress.nextStateButtonLabel)
  }

}
