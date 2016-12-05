//
//  ViewController.swift
//  NMDevice
//
//  Created by Nicolas Mahé on 12/05/2016.
//  Copyright (c) 2016 Nicolas Mahé. All rights reserved.
//

import UIKit
import NMDevice

class ViewController: UIViewController {
  
  @IBOutlet weak var label: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    var message = "Name: " + Device.name + "\n"
    message += "SystemName: " + Device.systemName + "\n"
    message += "iosVersion: " + Device.iosVersion.description + "\n"
    
    message += "Screen width: " + Device.ScreenSize.width.description + "\n"
    message += "Screen height: " + Device.ScreenSize.height.description
    
    self.label.text = message
  }
  
}

