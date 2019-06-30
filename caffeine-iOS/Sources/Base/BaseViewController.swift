//
//  BaseViewController.swift
//  caffeine-iOS
//
//  Created by 김연준 on 30/06/2019.
//  Copyright © 2019 caffeine. All rights reserved.
//

import Foundation

import UIKit
import RxSwift

class BaseViewController: UIViewController {
  
  // MARK: Initializing
  init() {
    super.init(nibName: nil, bundle: nil)
  }
  
  required convenience init?(coder aDecoder: NSCoder) {
    self.init()
  }
  
  // MARK: Rx
  var disposeBag = DisposeBag()
  
  // MARK: Layout Constraints
  private(set) var didSetupConstraints = false
  
  override func viewDidLoad() {
    self.view.setNeedsUpdateConstraints()
    customize()
  }
  
  override func updateViewConstraints() {
    if !self.didSetupConstraints {
      self.setupConstraints()
      self.didSetupConstraints = true
    }
    super.updateViewConstraints()
  }
  
  func setupConstraints() {
    // Override point
  }
  
  func customize() {
    
  }
  
}
