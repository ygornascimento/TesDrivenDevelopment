//
//  ButtonObserver.swift
//  FitNessTests
//
//  Created by Ygor Nascimento on 22/04/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import XCTest

class ButtonObserver: NSObject {

  var expectation: XCTestExpectation?
  weak var button: UIButton?

  func observe(_ button: UIButton, expectation: XCTestExpectation) {
    self.expectation = expectation
    self.button = button

    button.addObserver(self, forKeyPath: "titleLabel.text", options: [.new], context: nil)
  }

  override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
    expectation?.fulfill()
  }

  deinit {
    button?.removeObserver(self, forKeyPath: "titleLabel.text")
  }
}
