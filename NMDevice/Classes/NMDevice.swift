//
//  NMDevice.swift
//  NMDevice
//
//  Created by Nicolas Mahé on 29/03/16.
//  Copyright © 2016 Nicolas Mahé. All rights reserved.
//

import UIKit

public class NMDevice {
  
  public enum IphoneSize {
    case _35Inch
    case _40Inch
    case _47Inch
    case _55Inch
    
    init() {
      if UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.max_length == 480.0 {
        self = ._35Inch
      }
      else if UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.max_length == 568.0 {
        self = ._40Inch
      }
      else if UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.max_length == 667.0 {
        self = ._47Inch
      }
      else {
      //UIDevice.current.userInterfaceIdiom == .phone && ScreenSize.max_length == 736.0
        self = ._55Inch
      }
    }
  }
  
  public enum iOSVersion: Int { //@todo: version que l'init marche bien avec sous version d'ios (v10.2 par exemple)
    case _7 = 7
    case _8 = 8
    case _9 = 9
    case _10 = 10
    
    init() {
      let version = NSString(string: UIDevice.current.systemVersion).doubleValue
      if version <= 7 {
        self = ._7
      }
      else if version == 8 {
        self = ._8
      }
      else if version == 9 {
        self = ._9
      }
      else {
        self = ._10
      }
    }
  }
  
  public static let name = UIDevice.current.name
  public static let systemName = UIDevice.current.systemName
  public static var scale: CGFloat = UIScreen.main.scale
  
  //screen size
  public class ScreenSize {
    public static let width = UIScreen.main.bounds.size.width
    public static let height = UIScreen.main.bounds.size.height
    public static let max_length = max(ScreenSize.width, ScreenSize.height)
    public static let min_length = min(ScreenSize.width, ScreenSize.height)
  }
  
  /**
   Return the small size if the user device is contain in the smallDevices array, return the big one if not
   Default smallDevices = [._35Inch, ._40Inch]
   */
  public class func size(
    _ bigSize: CGFloat,
    _ smallSize: CGFloat,
    smallDevices: [NMDevice.IphoneSize] = [._35Inch, ._40Inch]
    ) -> CGFloat {
    let device = NMDevice.IphoneSize()
    if smallDevices.contains(device) {
      return smallSize
    }
    return bigSize
  }
}

